# Olearis

Flutter application with Clean Architecture.

## Quick Start

```bash
# Install tools via asdf
asdf install

# Install dependencies
flutter pub get

# Generate code (freezed, riverpod, drift)
dart run build_runner build --delete-conflicting-outputs

# Run app
flutter run

# Run tests
flutter test

# Update golden files
flutter test --update-goldens
```

## Requirements

- [asdf](https://asdf-vm.com/) with plugins:
  - flutter 3.38.9-stable
  - cocoapods 1.16.2
  - ruby 3.2.0

## Architecture

```
lib/
├── core/           # Shared utilities, theme, widgets
├── database/       # Drift database, DAOs, tables
├── di/             # Dependency injection (Riverpod providers)
├── features/       # Feature modules
│   ├── auth/       # Authentication
│   └── home/       # Home screen with tiles
└── main.dart
```

Each feature follows Clean Architecture layers:
- **domain** — entities, repositories (interfaces), value objects
- **application** — controllers, states, use cases
- **infrastructure** — repository implementations, mappers
- **presentation** — pages, widgets

## Tech Stack

- **State Management**: Riverpod + riverpod_generator
- **Navigation**: go_router
- **Database**: Drift (SQLite)
- **Code Generation**: freezed, json_serializable

## Tests

```
test/
├── features/       # Unit tests (value objects, use cases, state, repository)
├── core/           # Widget tests (AppButton, AppTextField)
├── golden/         # Golden tests (SignInPage, HomePage)
└── helpers/        # Test utilities
```
