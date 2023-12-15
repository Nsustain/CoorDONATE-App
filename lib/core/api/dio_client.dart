import 'package:coordonate_app/core/core.dart';
import 'package:coordonate_app/dependency_injection.dart';
import 'package:coordonate_app/utils/helper/pref_manager.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

typedef ResponseConverter<T> = T Function(dynamic response);

class DioClient {
  String baseUrl = "https://coordonate-api.vercel.app/";

  String? _auth;
  bool _isUnitTest = false;
  late Dio _dio;

  DioClient({bool isUnitTest = false}) {
    _isUnitTest = isUnitTest;

    try {
      _auth = sl<PrefManager>().accessToken;
    } catch (_) {}

    _dio = _createDio();

    if (!_isUnitTest) _dio.interceptors.add(DioInterceptor());
  }

  Dio get dio {
    if (_isUnitTest) {
      /// Return static dio if is unit test
      return _dio;
    } else {
      /// We need to recreate dio to avoid token issue after login
      try {
        _auth = sl<PrefManager>().accessToken;
      } catch (_) {}

      final dio = _createDio();

      if (!_isUnitTest) dio.interceptors.add(DioInterceptor());

      return dio;
    }
  }

  Dio _createDio() => Dio(
        BaseOptions(
          baseUrl: baseUrl,
          headers: {
            'Content-Type': 'application/json',
            'Accept': 'application/json',
            if (_auth != null) ...{
              'Authorization': 'Bearer $_auth',
            },
          },
          receiveTimeout: const Duration(seconds: 20),
          connectTimeout: const Duration(seconds: 20),
          validateStatus: (int? status) {
            return status! > 0;
          },
        ),
      );

  Future<Either<Failure, List<T>>> getAllRequest<T>(
    String url, {
    Map<String, dynamic>? queryParameters,
    required ResponseConverter<T> converter,
    bool isIsolate = true,
  }) async {
    try {
      final response = await dio.get(url, queryParameters: queryParameters);
      if ((response.statusCode ?? 0) < 200 ||
          (response.statusCode ?? 0) > 201) {
        throw DioException(
          requestOptions: response.requestOptions,
          response: response,
        );
      }

      final List<dynamic> responseData = response.data;

      if (!isIsolate) {
        final List<T> convertedData =
            responseData.map((item) => converter(item)).toList();
        return Right(convertedData);
      }

      final List<T> convertedData = [];

      for (var item in responseData) {
        final isolateParse = IsolateParser<T>(item, converter);
        final T result = await isolateParse.parseInBackground();
        convertedData.add(result);
      }

      return Right(convertedData);
    } on DioException catch (e) {
      return Left(
        ServerFailure(
          e.response?.data['description'] as String? ?? e.message,
        ),
      );
    }
  }

  Future<Either<Failure, T>> getRequest<T>(
    String url, {
    Map<String, dynamic>? queryParameters,
    required ResponseConverter<T> converter,
    bool isIsolate = true,
  }) async {
    try {
      final response = await dio.get(url, queryParameters: queryParameters);
      if ((response.statusCode ?? 0) < 200 ||
          (response.statusCode ?? 0) > 201) {
        throw DioException(
          requestOptions: response.requestOptions,
          response: response,
        );
      }

      if (!isIsolate) {
        return Right(converter(response.data));
      }
      final isolateParse = IsolateParser<T>(response.data, converter);
      final result = await isolateParse.parseInBackground();
      return Right(result);
    } on DioException catch (e) {
      return Left(
        ServerFailure(
          e.response?.data['description'] as String? ?? e.message,
        ),
      );
    }
  }

  Future<Either<Failure, T>> postRequest<T>(
    String url, {
    Map<String, dynamic>? data,
    required ResponseConverter<T> converter,
    bool isIsolate = true,
  }) async {
    try {
      final response = await dio.post(url, data: data);
      if ((response.statusCode ?? 0) < 200 ||
          (response.statusCode ?? 0) > 201) {
        throw DioException(
          requestOptions: response.requestOptions,
          response: response,
        );
      }

      if (!isIsolate) {
        return Right(converter(response.data));
      }
      // print(response);
      // print(response.data);
      // final jsonResponse = jsonDecode(response.data);
      // print(jsonResponse);
      final isolateParse = IsolateParser<T>(response.data, converter);
      final result = await isolateParse.parseInBackground();
      return Right(result);
    } on DioException catch (e) {
      return Left(
        ServerFailure(
          e.response?.data['description'] as String? ?? e.message,
        ),
      );
    }
  }
}
