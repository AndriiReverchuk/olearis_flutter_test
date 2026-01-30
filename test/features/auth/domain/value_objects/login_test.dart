import 'package:flutter_test/flutter_test.dart';
import 'package:olearis/features/auth/domain/value_objects/login.dart';

void main() {
  group('Login', () {
    test('valid when not empty', () {
      const login = Login('user@example.com');
      expect(login.isValid, isTrue);
    });

    test('invalid when empty', () {
      const login = Login('');
      expect(login.isValid, isFalse);
      expect(login.validationError, equals('Login is required'));
    });

    test('invalid when whitespace only', () {
      const login = Login('   ');
      expect(login.isValid, isFalse);
    });
  });
}
