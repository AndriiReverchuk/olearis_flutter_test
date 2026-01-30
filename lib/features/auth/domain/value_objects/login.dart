import 'package:freezed_annotation/freezed_annotation.dart';

part 'login.freezed.dart';

@freezed
abstract class Login with _$Login {
  const Login._();

  const factory Login(String value) = _Login;

  bool get isValid => value.trim().isNotEmpty;

  String? get validationError {
    if (value.trim().isEmpty) {
      return 'Login is required';
    }
    return null;
  }

  static Login empty() => const Login('');
}
