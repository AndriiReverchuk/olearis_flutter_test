import 'package:flutter_test/flutter_test.dart';
import 'package:olearis/features/auth/application/sign_in_state.dart';
import 'package:olearis/features/auth/domain/value_objects/login.dart';
import 'package:olearis/features/auth/domain/value_objects/password.dart';

void main() {
  group('SignInState', () {
    test('canSubmit when valid and not loading', () {
      const state = SignInState(
        login: Login('user'),
        password: Password('secret'),
      );
      expect(state.canSubmit, isTrue);
    });

    test('cannot submit when loading', () {
      const state = SignInState(
        login: Login('user'),
        password: Password('secret'),
        isLoading: true,
      );
      expect(state.canSubmit, isFalse);
    });

    test('cannot submit when invalid', () {
      const state = SignInState();
      expect(state.canSubmit, isFalse);
    });
  });
}
