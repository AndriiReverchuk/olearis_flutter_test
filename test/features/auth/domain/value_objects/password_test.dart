import 'package:flutter_test/flutter_test.dart';
import 'package:olearis/features/auth/domain/value_objects/password.dart';

void main() {
  group('Password', () {
    test('valid when not empty', () {
      const password = Password('secret123');
      expect(password.isValid, isTrue);
    });

    test('invalid when empty', () {
      const password = Password('');
      expect(password.isValid, isFalse);
      expect(password.validationError, equals('Password is required'));
    });
  });
}
