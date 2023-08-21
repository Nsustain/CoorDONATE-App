import 'package:coordonate_app/core/core.dart';
import 'package:coordonate_app/dependency_injection.dart';
import 'package:coordonate_app/utils/helper/pref_manager.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'dart:convert';

typedef ResponseConverter<T> = T Function(dynamic response);

class DioClient {
  String baseUrl = "https://coordonate-backend-abrishatlaw-gmailcom.vercel.app";

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
              'Authorization':
                  'Bearer eyJhbGciOiJSUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOjIyLCJpYXQiOjE2OTI2MzY1MTUsImV4cCI6MTY5MjYzNzQxNX0.OkvthS4JV_QLts3iNMS47Bn27K6D--9rZoapd2XsMdRfGy0dOPQZeEw15cFkyNVtEMjCif9DAnXoCmUJByAboFgKaiL0P-62cJkbwAa7p7rHqjNwhgXQP3rYAhPO1cu7hsI_ic8p-aKi5NO4uqoUkOqXj8Njzru9nm1kSKCiGMvTkFcwqY9pEIeCeuzGWTKI3V1eOSJehYAt3EYEAgrgN1QvVx1Xh62Xrh4ppvARcuL38DqE2BZ645sMW_3zRpWE4d10HBzV0mv1rx4HZ4Fv0zxVbLhWWi68PAAZoR-cDTCRI2H8bf-_IWER-Y2pHjvytOpOeB31_eBBvIZ12bceClHoLdVLxNTzI5qGV_JIQT38l5dgZUIi61JhDWlUSqRR7H03skkbBY1YaSq1Qu2kprC-2tME4kBr4rLfGznoQnbDW6K90cr06JOAqVXMeSb3G_-tibb0d61tJ75Fq9IcpSeZYyrcdJJW12i32M-90Gsk_L3qOJY_Z8H63tPGJ7FmZ766uWHlDM7F5vEM8izSCVKjHOdPxwasRDhABlL2j1FhQVMFEI1yFzdPQhv5F1DAGLIoSzc2ceXUcTV6LecWAyK287G9KVpDS9cakLc_3mzMp09mPPgQMTFFxL1uDZ5ywTYBVH5imLEtMWY9ErAhpp2DGaijk84Az0pKeUQKkOA',
            },
          },
          receiveTimeout: const Duration(seconds: 30),
          connectTimeout: const Duration(seconds: 30),
          validateStatus: (int? status) {
            return status! > 0;
          },
        ),
      );

  Future<Either<Failure, T>> getRequest<T>(
    String url, {
    Map<String, dynamic>? queryParameters,
    required ResponseConverter<T> converter,
    ResponseConverter<T>? listResponseConverter,
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
      final isolateParse = IsolateParser<T>(
          json: response.data,
          converter: converter,
          listResponseConverter: listResponseConverter);
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
    ResponseConverter<T>? listResponseConverter,
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
      final isolateParse = IsolateParser<T>(
          json: response.data,
          converter: converter,
          listResponseConverter: listResponseConverter);
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
