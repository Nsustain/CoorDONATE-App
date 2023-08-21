import 'dart:convert';

import 'package:coordonate_app/utils/helper/helper.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

class DioInterceptor extends Interceptor {
  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) {
    String headerMessage = "";
    options.headers.forEach((k, v) => headerMessage += '► $k: $v\n');

    try {
      options.queryParameters.forEach(
        (k, v) => debugPrint(
          '► $k: $v',
        ),
      );
    } catch (_) {}
    try {
      const JsonEncoder encoder = JsonEncoder.withIndent('  ');
      final String prettyJson = encoder.convert(options.data);
      log.d(
          // ignore: unnecessary_null_comparison
          "REQUEST ► ︎ ${options.method != null ? options.method.toUpperCase() : 'METHOD'} ${"${options.baseUrl}${options.path}"}\n\n"
              "Headers:\n"
              "$headerMessage\n"
              "❖ QueryParameters : \n"
              "Body: $prettyJson",
          "encodedValue: $encoder.convert(options.data)");
    } catch (e) {
      log.e("Failed to extract json request $e");
      // Crashlytics.nonFatalError(
      //   error: e,
      //   reason: "Failed to extract json request",
      // );
    }

    super.onRequest(options, handler);
  }

  @override
  void onError(DioException dioException, ErrorInterceptorHandler handler) {
    print(dioException);
    log.e(
      "$dioException",
      "<-- ${dioException.message} ${dioException.response?.requestOptions != null ? (dioException.response!.requestOptions.baseUrl + dioException.response!.requestOptions.path) : 'URL'}\n\n"
          "${dioException.response != null ? dioException.response!.data : 'Unknown Error'}",
    );

    // Crashlytics.nonFatalError(
    //   error: dioException.error,
    //   stackTrace: dioError.stackTrace,
    //   reason: "Failed to fetch data",
    // );
    super.onError(dioException, handler);
  }

  @override
  void onResponse(Response response, ResponseInterceptorHandler handler) {
    String headerMessage = "";
    response.headers.forEach((k, v) => headerMessage += '► $k: $v\n');

    const JsonEncoder encoder = JsonEncoder.withIndent('  ');
    final String prettyJson = encoder.convert(response.data);
    log.d(
      // ignore: unnecessary_null_comparison
      "◀ ︎RESPONSE ${response.statusCode} ${response.requestOptions != null ? (response.requestOptions.baseUrl + response.requestOptions.path) : 'URL'}\n\n"
      "Headers:\n"
      "$headerMessage\n"
      "❖ Results : \n"
      "Response: $prettyJson",
    );
    super.onResponse(response, handler);
  }
}
