import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:taptic_feedback/taptic_feedback.dart';

void main() {
  const MethodChannel channel = MethodChannel('taptic_feedback');

  setUp(() {
    channel.setMockMethodCallHandler((MethodCall methodCall) async {
      return '42';
    });
  });

  tearDown(() {
    channel.setMockMethodCallHandler(null);
  });
}
