import '../entities/user_credentials.dart';

abstract class AuthRepository {
  Future<UserCredentials> signIn({
    required String login,
    required String password,
  });

  Future<void> signOut();

  Future<bool> isAuthenticated();

  Future<UserCredentials?> getCredentials();
}
