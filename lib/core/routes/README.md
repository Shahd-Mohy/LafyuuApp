# App Navigation Structure (MVVM Architecture)

## Routes (GoRouter)
- `/` - Onboarding screens (3 pages with skip functionality)
- `/login` - Login screen
- `/register` - Register screen  
- `/home` - Home screen

## MVVM Architecture Structure

### Features Structure
```
lib/features/
├── authentication/
│   ├── login/
│   │   ├── data/models/
│   │   ├── presentation/
│   │   │   ├── view/login_view.dart
│   │   │   └── viewmodel/login_viewmodel.dart
│   ├── register/
│   │   ├── data/models/
│   │   ├── presentation/
│   │   │   ├── view/register_view.dart
│   │   │   └── viewmodel/register_viewmodel.dart
│   └── onboarding/
│       ├── data/models/onboarding_data.dart
│       ├── presentation/
│       │   ├── view/onboarding_view.dart
│       │   └── widgets/onboarding_page.dart
└── shop/
    └── home/
        ├── data/models/product_model.dart
        ├── presentation/
        │   ├── view/home_view.dart
        │   └── viewmodel/home_viewmodel.dart
```

## Navigation Helper
Use `NavigationHelper` class for consistent navigation throughout the app:

```dart
NavigationHelper.navigateToLogin(context);
NavigationHelper.navigateToHome(context);
// etc.
```

## GoRouter Implementation
Clean routes with proper imports to separate view files:

```dart
abstract class AppRouter {
  static const kOnboardingView = '/';
  static const kLoginView = '/login';
  // ... other routes
  
  static final router = GoRouter(
    routes: [
      GoRoute(path: kOnboardingView, builder: (context, state) => const OnboardingView()),
      GoRoute(path: kLoginView, builder: (context, state) => const LoginView()),
      // ... other routes
    ],
  );
}
```

## MVVM Benefits
- **Separation of Concerns**: Views, ViewModels, and Models are separated
- **Testability**: ViewModels can be easily unit tested
- **Maintainability**: Clean architecture makes code easier to maintain
- **Scalability**: Easy to add new features following the same pattern

## Flow
1. App starts with native splash screen (configured in splash.yaml)
2. Automatically navigates to onboarding screens
3. User can skip onboarding or complete it
4. Navigates to login screen
5. After login, navigates to home screen

## Native Splash
The native splash is configured in `splash.yaml` and shows immediately when the app launches, before Flutter loads.