// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sign_in_controller.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$signInControllerHash() => r'918b0f0b43db9c35193815c95c84c7f48c84e40c';

/// Controller для Sign In екрану.
///
/// Thin controller — делегує бізнес-логіку в UseCase.
///
/// Responsibilities:
/// - Управління станом форми
/// - Виклик UseCase
/// - Обробка помилок для UI
///
/// НЕ відповідає за:
/// - Бізнес-логіку (UseCase)
/// - UI рендеринг
/// - Навігацію (повертає success/failure)
///
/// Copied from [SignInController].
@ProviderFor(SignInController)
final signInControllerProvider =
    AutoDisposeNotifierProvider<SignInController, SignInState>.internal(
  SignInController.new,
  name: r'signInControllerProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$signInControllerHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef _$SignInController = AutoDisposeNotifier<SignInState>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
