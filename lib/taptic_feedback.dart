import 'dart:async';

import 'package:flutter/services.dart';

class TapticFeedback {
  static const MethodChannel _channel =
      const MethodChannel('taptic_feedback');

  static Future<void> light() async {
    await _channel.invokeMethod('light');
  }

  static Future<void> strong() async {
    await _channel.invokeMethod('strong');
  }

  static Future<void> doubleStrong() async {
    await _channel.invokeMethod('doubleStrong');
  }

  static Future<void> tripleLight() async {
    await _channel.invokeMethod('tripleLight');
  }

  static Future<void> tripleStrong() async {
    await _channel.invokeMethod('tripleStrong');
  }

  static Future<void> quintLight() async {
    await _channel.invokeMethod('quintStrong');
  }

  static Future<void> fromCode(int code) async {
    await _channel.invokeMethod('fromCode', code);
  }
}
