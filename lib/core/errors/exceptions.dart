sealed class AppException implements Exception {
  const AppException([this.message]);

  final String? message;

  @override
  String toString() => message ?? runtimeType.toString();
}

class AuthException extends AppException {
  const AuthException([super.message]);
}

class NetworkException extends AppException {
  const NetworkException([super.message, this.statusCode]);

  final int? statusCode;
}

class ServerException extends AppException {
  const ServerException([super.message, this.code]);

  final int? code;
}

class CacheException extends AppException {
  const CacheException([super.message]);
}
