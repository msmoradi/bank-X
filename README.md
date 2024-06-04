# BanX

A modern mobile banking application built with Flutter, featuring clean architecture, a Persian (Farsi) UI, and a rich set of financial features — including passkey authentication, NFC card reading, KYC verification, and transaction management.

---

## Features

**Authentication**
- Phone number login with OTP verification
- Secure password creation and verification
- Biometric login (fingerprint / face ID)
- Passkey support via WebAuthn (FIDO2)

**KYC & Identity**
- National ID and serial number entry
- Liveness detection with camera
- KYC status tracking with real-time polling
- Identity correction flow

**Card Management**
- Card type selection with 3D flip animation
- NFC card reading (NDEF records)
- Card activation with OTP confirmation
- Delivery time slot scheduling
- Card states: active, frozen, deactivated

**Transactions**
- Transaction history list
- Destination and inquiry lookup
- Checkout confirmation flow

**Address**
- Province and city selection
- Postal code validation
- Add and manage multiple addresses

**General**
- RTL layout with full Persian (fa_IR) localization
- IRANSansXFaNum custom font
- Light and dark theme
- Crash reporting via Sentry

---

## Architecture

The project follows **Clean Architecture** with a feature-first folder structure.

```
lib/
├── core/
│   ├── data/            # DTOs, mappers, datasources, repositories
│   ├── domain/          # Entities, use cases, repository interfaces
│   ├── designsystem/    # Theme, reusable widgets, button styles
│   ├── networking/      # Dio client, interceptors, error handling
│   └── utils/           # Extensions, validators, local auth helper
├── feature/             # One folder per screen / feature
│   └── <feature>/
│       └── presentation/
│           ├── bloc/    # BLoC: events, states, bloc
│           └── view/    # Page and widget files
├── composition/         # Page factories (dependency wiring at the root)
└── routing/             # go_router configuration
```

Each feature is self-contained. Dependencies flow inward: `presentation → domain ← data`.

---

## Tech Stack

| Layer | Library |
|---|---|
| State management | `flutter_bloc` |
| Routing | `go_router` |
| Networking | `dio`, `pretty_dio_logger` |
| Dependency injection | `get_it`, `injectable` |
| Code generation | `freezed`, `json_serializable`, `build_runner` |
| Secure storage | `flutter_secure_storage` |
| Biometrics | `local_auth` |
| Passkeys | `passkeys_android`, `passkeys_ios` |
| NFC | `flutter_nfc_kit`, `ndef` |
| Crash reporting | `sentry_flutter` |
| Persian UI | `persian_datetime_picker`, `persian_number_utility` |
| UI extras | `flip_card`, `pinput`, `table_calendar`, `toastification` |

---

## Getting Started

### Prerequisites

- Flutter `>=3.16` — [install guide](https://docs.flutter.dev/get-started/install)
- Dart SDK `>=3.1.2 <4.0.0`
- Xcode (iOS builds)
- Android Studio / Android SDK (Android builds)

### Installation

```bash
git clone https://github.com/msmoradi/bank-X.git
cd bank-X
make get
```

### Code generation

Several files (`*.g.dart`, `*.freezed.dart`) are pre-generated. Regenerate them after cloning or when models change:

```bash
make generate
```

---

## Running the App

```bash
make run
```

Or in release mode:

```bash
make run-release
```

### Configuration

Set your Sentry DSN in `lib/main.dart` before running:

```dart
options.dsn = 'YOUR_SENTRY_DSN';
```

---

## Build

```bash
# Android APK
make build-android

# Android App Bundle
make build-android-bundle

# iOS
make build-ios
```

---

## Development Commands

All common tasks are available via `make`:

```
make help             list all commands
make get              flutter pub get
make generate         run build_runner (one-shot)
make watch            run build_runner in watch mode
make analyze          flutter analyze
make format           dart format
make test             flutter test
make qualitycheck     clean → format-check → analyze → test with coverage
make deep-clean       remove all generated files and build artifacts
```

---

## Localization

String resources live in `assets/languages/` as `.arb` files (`app_fa.arb`, `app_en.arb`).

To add or update strings, edit the `.arb` files and regenerate:

```bash
flutter gen-l10n
```

Access strings in widgets via the localization delegate configured in `app.dart`.

---

## Project Structure Highlights

```
lib/feature/
├── phone/                  # Phone number entry
├── verify_otp/             # OTP verification
├── create_password/        # Password setup
├── verify_password/        # Password login
├── enable_biometric/       # Biometric setup
├── face_detection/         # KYC liveness check
├── identity/               # National ID entry
├── kyc_status/             # KYC progress
├── select_card/            # Card selection
├── card_activation/        # Card activation
├── assist/                 # NFC card reader
├── transaction/            # Transaction history
├── transaction_checkout/   # Payment confirmation
├── add_address/            # Address management
├── home/                   # Home dashboard
└── profile/                # User profile
```

---

## Contributing

Contributions are welcome. Please open an issue first to discuss what you would like to change.

1. Fork the project
2. Create your branch: `git checkout -b feature/your-feature`
3. Commit your changes: `git commit -m 'add your feature'`
4. Push to your branch: `git push origin feature/your-feature`
5. Open a pull request

---

## License

This project is licensed under the MIT License. See the [LICENSE](LICENSE) file for details.