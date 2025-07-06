ee# Smart Home IoT Application

A sophisticated Flutter application designed for monitoring and controlling smart home devices, with a focus on solar panels and energy management. This application integrates with IoT devices to provide real-time data and control capabilities.

## Table of Contents

- [Features](#features)
- [Project Structure](#project-structure)
- [Prerequisites](#prerequisites)
- [Getting Started](#getting-started)
- [Running the App](#running-the-app)
- [Testing](#testing)
- [API Integration](#api-integration)
- [Project Architecture](#project-architecture)
- [Dependencies](#dependencies)
- [Troubleshooting](#troubleshooting)

## Features

- **User Authentication**: Secure login, signup, password reset, and account verification
- **Device Management**: Add, control, and monitor various IoT devices
- **Energy Monitoring**: Real-time tracking of energy production and consumption
- **Solar Panel Management**: Monitor and control solar panels with manual/auto mode
- **Battery Status**: Track battery levels and performance metrics
- **Notifications**: Real-time alerts and notifications
- **Multilingual Support**: Arabic and English language options
- **Responsive Design**: Optimized for various screen sizes

## Project Structure

The project follows a clean architecture approach with BLoC pattern for state management:

```
lib/
├── src/
│   ├── core/            # Core functionality (routes, config, services)
│   ├── features/        # Feature modules (auth, devices, panels, etc.)
│   │   ├── battery/     # Battery monitoring functionality
│   │   ├── devices/     # Device management 
│   │   ├── home/        # Home screen and dashboard
│   │   ├── panels/      # Solar panel management
│   │   └── ...          # Other feature modules
│   └── ...
├── app.dart             # Main app configuration
└── main.dart            # Application entry point
```

## Prerequisites

- Flutter SDK (v3.6.0 or higher)
- Dart SDK (v3.6.0 or higher)
- Android Studio / VS Code with Flutter extensions
- Android SDK for Android deployment
- Xcode for iOS deployment (Mac only)
- Git

## Getting Started

1. Clone the repository
   ```bash
   git clone <repository-url>
   cd final_project
   ```

2. Install dependencies
   ```bash
   flutter pub get
   ```

3. Set up Firebase (required for authentication and notifications)
   - Create a Firebase project at [Firebase Console](https://console.firebase.google.com/)
   - Configure Firebase for Android and iOS platforms
   - Download and place the configuration files in the appropriate locations:
     - For Android: `android/app/google-services.json`
     - For iOS: `ios/Runner/GoogleService-Info.plist`

4. Generate required files
   ```bash
   flutter pub run build_runner build --delete-conflicting-outputs
   ```

## Running the App

### Development Environment

```bash
# Run in debug mode
flutter run

# Run with specific device
flutter run -d <device-id>

# Run with flavor
flutter run --flavor dev
```

### Production Build

```bash
# Android APK
flutter build apk --release

# Android App Bundle
flutter build appbundle --release

# iOS
flutter build ios --release
```

## Testing

```bash
# Run all tests
flutter test

# Run specific test file
flutter test test/api_services_test.dart

# Generate coverage report
flutter test --coverage
```

## API Integration

The application integrates with backend services for device management and data synchronization. The API services are defined in the `src/core/services/api_services.dart` file.

For local testing, ensure you have the mock server running or configure the API endpoints to point to the development server.

## Project Architecture

This project implements Clean Architecture with the following layers:

- **Presentation Layer**: BLoC/Cubit for state management, UI components
- **Domain Layer**: Use cases, entities, repository interfaces
- **Data Layer**: Repository implementations, data sources, models

We use the BLoC pattern for state management, providing a clear separation of concerns and testable code.

## Dependencies

Key dependencies include:

- **State Management**: flutter_bloc, equatable
- **Navigation**: go_router
- **API Integration**: dio, retrofit
- **Storage**: shared_preferences, hive, flutter_secure_storage
- **UI Components**: flutter_screenutil, dropdown_button2, svg_flutter
- **Charts**: fl_chart, geekyants_flutter_gauges
- **Firebase**: firebase_core, firebase_auth (currently commented out)
- **Localization**: easy_localization

For a complete list of dependencies, see the `pubspec.yaml` file.

## Troubleshooting

### Common Issues

1. **Build Failures**
   - Ensure you have the latest Flutter SDK installed
   - Run `flutter clean` followed by `flutter pub get`
   - Check for any conflicts in generated files by running `flutter pub run build_runner build --delete-conflicting-outputs`

2. **Firebase Integration Issues**
   - Verify that the Firebase configuration files are correctly placed
   - Ensure the package names in the Firebase console match your app's package names

3. **Dependency Conflicts**
   - If you encounter dependency conflicts, try running:
     ```bash
     flutter pub cache repair
     flutter pub get
     ```

For additional support, please contact the development team.
