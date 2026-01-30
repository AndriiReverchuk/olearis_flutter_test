import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../core/errors/exceptions.dart';
import '../domain/value_objects/login.dart';
import '../domain/value_objects/password.dart';
import 'providers.dart';
import 'sign_in_state.dart';

part 'sign_in_controller.g.dart';

@riverpod
class SignInController extends _$SignInController {
  @override
  SignInState build() => const SignInState();

  void onLoginChanged(String value) {
    state = state.copyWith(
      login: Login(value),
      errorMessage: null,
    );
  }

  void onPasswordChanged(String value) {
    state = state.copyWith(
      password: Password(value),
      errorMessage: null,
    );
  }

  Future<bool> submit() async {
    if (!state.canSubmit) return false;

    state = state.copyWith(isLoading: true, errorMessage: null);

    try {
      final useCase = ref.read(signInUseCaseProvider);
      await useCase.execute(
        login: state.login,
        password: state.password,
      );

      state = state.copyWith(isLoading: false, isSuccess: true);
      return true;
    } on AuthException catch (e) {
      state = state.copyWith(
        isLoading: false,
        errorMessage: e.message ?? 'Authentication failed',
      );
      return false;
    } catch (e) {
      state = state.copyWith(
        isLoading: false,
        errorMessage: 'An error occurred. Please try again.',
      );
      return false;
    }
  }
}
