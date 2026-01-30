import '../../../../core/errors/exceptions.dart';
import '../../domain/entities/user_credentials.dart';
import '../../domain/repositories/auth_repository.dart';
import '../../domain/value_objects/login.dart';
import '../../domain/value_objects/password.dart';

class SignInUseCase {
  final AuthRepository _repository;

  SignInUseCase(this._repository);

  Future<UserCredentials> execute({
    required Login login,
    required Password password,
  }) async {
    // Validation (business rule)
    if (!login.isValid) {
      throw const AuthException('Invalid login');
    }
    if (!password.isValid) {
      throw const AuthException('Invalid password');
    }

    // Call repository
    return await _repository.signIn(
      login: login.value,
      password: password.value,
    );
  }
}
