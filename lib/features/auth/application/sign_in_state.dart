import 'package:freezed_annotation/freezed_annotation.dart';

import '../domain/value_objects/login.dart';
import '../domain/value_objects/password.dart';

part 'sign_in_state.freezed.dart';

@freezed
abstract class SignInState with _$SignInState {
  const SignInState._();

  const factory SignInState({
    @Default(Login('')) Login login,
    @Default(Password('')) Password password,
    @Default(false) bool isLoading,
    @Default(false) bool isSuccess,
    String? errorMessage,
  }) = _SignInState;

  bool get isValid => login.isValid && password.isValid;

  bool get canSubmit => isValid && !isLoading;

  String? get loginError => login.value.isEmpty ? null : login.validationError;

  String? get passwordError =>
      password.value.isEmpty ? null : password.validationError;
}
