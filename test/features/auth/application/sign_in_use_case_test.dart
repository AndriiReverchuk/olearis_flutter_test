import 'package:flutter_test/flutter_test.dart';
import 'package:olearis/core/errors/exceptions.dart';
import 'package:olearis/features/auth/application/use_cases/sign_in_use_case.dart';
import 'package:olearis/features/auth/domain/entities/user_credentials.dart';
import 'package:olearis/features/auth/domain/repositories/auth_repository.dart';
import 'package:olearis/features/auth/domain/value_objects/login.dart';
import 'package:olearis/features/auth/domain/value_objects/password.dart';

void main() {
  group('SignInUseCase', () {
    late SignInUseCase useCase;
    late _MockAuthRepository repository;

    setUp(() {
      repository = _MockAuthRepository();
      useCase = SignInUseCase(repository);
    });

    test('throws when login invalid', () {
      expect(
        () => useCase.execute(login: const Login(''), password: const Password('secret')),
        throwsA(isA<AuthException>()),
      );
    });

    test('throws when password invalid', () {
      expect(
        () => useCase.execute(login: const Login('user'), password: const Password('')),
        throwsA(isA<AuthException>()),
      );
    });

    test('returns credentials on success', () async {
      repository.result = const UserCredentials(login: 'user', token: 'token');

      final result = await useCase.execute(
        login: const Login('user'),
        password: const Password('secret'),
      );

      expect(result.token, equals('token'));
    });
  });
}

class _MockAuthRepository implements AuthRepository {
  UserCredentials? result;

  @override
  Future<UserCredentials> signIn({required String login, required String password}) async => result!;

  @override
  Future<void> signOut() async {}

  @override
  Future<bool> isAuthenticated() async => false;

  @override
  Future<UserCredentials?> getCredentials() async => null;
}
