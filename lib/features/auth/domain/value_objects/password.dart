import 'package:freezed_annotation/freezed_annotation.dart';

part 'password.freezed.dart';

@freezed
abstract class Password with _$Password {
  const Password._();

  const factory Password(String value) = _Password;

  bool get isValid => value.isNotEmpty;

  String? get validationError {
    if (value.isEmpty) {
      return 'Password is required';
    }
    return null;
  }

  static Password empty() => const Password('');
}
