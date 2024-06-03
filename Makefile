.PHONY: help get clean analyze format test build-android build-ios run qualitycheck deep-clean

# Default target - show help
help:
	@echo "Available commands:"
	@echo "  make get           - Get Flutter dependencies"
	@echo "  make clean         - Clean build artifacts"
	@echo "  make deep-clean    - Deep clean (removes all generated files)"
	@echo "  make analyze       - Run static analysis"
	@echo "  make format        - Format code"
	@echo "  make test          - Run tests"
	@echo "  make test-coverage - Run tests with coverage"
	@echo "  make qualitycheck  - Run full quality check (clean, analyze, test)"
	@echo "  make build-android - Build Android APK"
	@echo "  make build-ios     - Build iOS app"
	@echo "  make run           - Run the app"

# Get dependencies
get:
	flutter pub get

# Clean build artifacts
clean:
	flutter clean

# Deep clean - removes all generated files and build artifacts
deep-clean:
	git clean -x -d -f -q

# Run static analysis
analyze:
	flutter analyze --fatal-infos

# Format code
format:
	dart format .

# Check if code is formatted
format-check:
	dart format --output=none --set-exit-if-changed .

# Run tests
test:
	flutter test

# Run tests with coverage
test-coverage:
	flutter test --coverage
	@echo "Coverage report generated in coverage/lcov.info"

# Full quality check (like the old melos qualitycheck)
qualitycheck: deep-clean clean get format-check analyze test-coverage
	@echo "✅ Quality check completed successfully!"

# Build Android APK
build-android:
	flutter build apk --release

# Build Android App Bundle
build-android-bundle:
	flutter build appbundle --release

# Build iOS
build-ios:
	flutter build ios --release

# Run the app
run:
	flutter run

# Run the app in release mode
run-release:
	flutter run --release

# Check for outdated dependencies
outdated:
	flutter pub outdated

# Upgrade dependencies
upgrade:
	flutter pub upgrade

# Generate code (if using build_runner)
generate:
	flutter pub run build_runner build --delete-conflicting-outputs

# Watch for changes and generate code
watch:
	flutter pub run build_runner watch --delete-conflicting-outputs

