import 'package:flutter_test/flutter_test.dart';
import 'package:olearis/features/auth/infrastructure/repositories/auth_repository_impl.dart';

void main() {
  late AuthRepositoryImpl repository;

  setUp(() {
    repository = AuthRepositoryImpl();
  });

  group('AuthRepositoryImpl', () {
    test('signIn returns credentials with login', () async {
      final result = await repository.signIn(login: 'user', password: 'pass');

      expect(result.login, equals('user'));
      expect(result.token, startsWith('fake_token_'));
    });

    test('isAuthenticated returns false', () async {
      expect(await repository.isAuthenticated(), isFalse);
    });

    test('getCredentials returns null', () async {
      expect(await repository.getCredentials(), isNull);
    });
  });
}
