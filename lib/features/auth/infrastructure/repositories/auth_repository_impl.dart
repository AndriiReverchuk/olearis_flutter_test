import '../../domain/entities/user_credentials.dart';
import '../../domain/repositories/auth_repository.dart';

class AuthRepositoryImpl implements AuthRepository {
  AuthRepositoryImpl();

  @override
  Future<UserCredentials> signIn({
    required String login,
    required String password,
  }) async {
    await Future.delayed(const Duration(seconds: 1));

    return UserCredentials(
      login: login,
      token: 'fake_token_${DateTime.now().millisecondsSinceEpoch}',
    );
  }

  @override
  Future<void> signOut() async {}

  @override
  Future<bool> isAuthenticated() async {
    return false;
  }

  @override
  Future<UserCredentials?> getCredentials() async {
    return null;
  }
}
