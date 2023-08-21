import 'dart:isolate';

import 'package:coordonate_app/core/api/api.dart';

class IsolateParser<T> {
  final dynamic json;
  ResponseConverter<T> converter;
  ResponseConverter<T>? listResponseConverter;

  IsolateParser({required this.json, required this.converter, this.listResponseConverter});

  Future<T> parseInBackground() async {
    final port = ReceivePort();
    if (json is Map<String, dynamic>) {
      await Isolate.spawn(_parseMapOfJson, port.sendPort);
    } else if (json is List<dynamic>) {
      await Isolate.spawn(_parseListOfJson, port.sendPort);
    }

    final result = await port.first;
    return result as T;
  }

  Future<void> _parseMapOfJson(SendPort sendPort) async {
    final result = converter(json);
    Isolate.exit(sendPort, result);
  }

  Future<void> _parseListOfJson(SendPort sendPort) async {
    print(json);
    final result = (json as List).map((item) => listResponseConverter!(item));
    print(result);
    final result2 = converter(result);
    print(result);
    print(result2);
    Isolate.exit(sendPort, result2);
  }
}
