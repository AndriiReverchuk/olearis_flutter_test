import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_credentials.freezed.dart';

@freezed
abstract class UserCredentials with _$UserCredentials {
  const factory UserCredentials({
    required String login,
    required String token,
    DateTime? expiresAt,
  }) = _UserCredentials;
}
