import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';

class Enviroment {
  static String get fileName {
    if (kReleaseMode) {
      return 'env.production';
    }
    return 'env.development';
  }

  static String get apiUrl {
    return dotenv.env['API_URL'] ?? 'API URL not found';
  }
}
