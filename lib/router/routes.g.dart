// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'routes.dart';

// **************************************************************************
// GoRouterGenerator
// **************************************************************************

List<GoRoute> get $appRoutes => [
      $splashRoute,
      $welcomeRoute,
      $homeRoute,
      $loginRoute,
      $resetPasswordRoute,
      $findStudentRoute,
      $studentInfoRoute,
      $studentEditProfileRoute,
      $studentEditSuccessRoute,
      $studentCreateRoute,
      $studentCreateSuccessRoute,
    ];

GoRoute get $splashRoute => GoRouteData.$route(
      path: '/splash',
      factory: $SplashRouteExtension._fromState,
    );

extension $SplashRouteExtension on SplashRoute {
  static SplashRoute _fromState(GoRouterState state) => const SplashRoute();

  String get location => GoRouteData.$location(
        '/splash',
      );

  void go(BuildContext context) => context.go(location, extra: this);

  void push(BuildContext context) => context.push(location, extra: this);
}

GoRoute get $welcomeRoute => GoRouteData.$route(
      path: '/welcome',
      factory: $WelcomeRouteExtension._fromState,
    );

extension $WelcomeRouteExtension on WelcomeRoute {
  static WelcomeRoute _fromState(GoRouterState state) => const WelcomeRoute();

  String get location => GoRouteData.$location(
        '/welcome',
      );

  void go(BuildContext context) => context.go(location, extra: this);

  void push(BuildContext context) => context.push(location, extra: this);
}

GoRoute get $homeRoute => GoRouteData.$route(
      path: '/home',
      factory: $HomeRouteExtension._fromState,
    );

extension $HomeRouteExtension on HomeRoute {
  static HomeRoute _fromState(GoRouterState state) => const HomeRoute();

  String get location => GoRouteData.$location(
        '/home',
      );

  void go(BuildContext context) => context.go(location, extra: this);

  void push(BuildContext context) => context.push(location, extra: this);
}

GoRoute get $loginRoute => GoRouteData.$route(
      path: '/login',
      factory: $LoginRouteExtension._fromState,
    );

extension $LoginRouteExtension on LoginRoute {
  static LoginRoute _fromState(GoRouterState state) => const LoginRoute();

  String get location => GoRouteData.$location(
        '/login',
      );

  void go(BuildContext context) => context.go(location, extra: this);

  void push(BuildContext context) => context.push(location, extra: this);
}

GoRoute get $resetPasswordRoute => GoRouteData.$route(
      path: '/reset_password',
      factory: $ResetPasswordRouteExtension._fromState,
    );

extension $ResetPasswordRouteExtension on ResetPasswordRoute {
  static ResetPasswordRoute _fromState(GoRouterState state) =>
      const ResetPasswordRoute();

  String get location => GoRouteData.$location(
        '/reset_password',
      );

  void go(BuildContext context) => context.go(location, extra: this);

  void push(BuildContext context) => context.push(location, extra: this);
}

GoRoute get $findStudentRoute => GoRouteData.$route(
      path: '/find_student',
      factory: $FindStudentRouteExtension._fromState,
    );

extension $FindStudentRouteExtension on FindStudentRoute {
  static FindStudentRoute _fromState(GoRouterState state) =>
      const FindStudentRoute();

  String get location => GoRouteData.$location(
        '/find_student',
      );

  void go(BuildContext context) => context.go(location, extra: this);

  void push(BuildContext context) => context.push(location, extra: this);
}

GoRoute get $studentInfoRoute => GoRouteData.$route(
      path: '/student_info',
      factory: $StudentInfoRouteExtension._fromState,
    );

extension $StudentInfoRouteExtension on StudentInfoRoute {
  static StudentInfoRoute _fromState(GoRouterState state) =>
      const StudentInfoRoute();

  String get location => GoRouteData.$location(
        '/student_info',
      );

  void go(BuildContext context) => context.go(location, extra: this);

  void push(BuildContext context) => context.push(location, extra: this);
}

GoRoute get $studentEditProfileRoute => GoRouteData.$route(
      path: '/student_edit_profile',
      factory: $StudentEditProfileRouteExtension._fromState,
    );

extension $StudentEditProfileRouteExtension on StudentEditProfileRoute {
  static StudentEditProfileRoute _fromState(GoRouterState state) =>
      const StudentEditProfileRoute();

  String get location => GoRouteData.$location(
        '/student_edit_profile',
      );

  void go(BuildContext context) => context.go(location, extra: this);

  void push(BuildContext context) => context.push(location, extra: this);
}

GoRoute get $studentEditSuccessRoute => GoRouteData.$route(
      path: '/student_edit_success',
      factory: $StudentEditSuccessRouteExtension._fromState,
    );

extension $StudentEditSuccessRouteExtension on StudentEditSuccessRoute {
  static StudentEditSuccessRoute _fromState(GoRouterState state) =>
      const StudentEditSuccessRoute();

  String get location => GoRouteData.$location(
        '/student_edit_success',
      );

  void go(BuildContext context) => context.go(location, extra: this);

  void push(BuildContext context) => context.push(location, extra: this);
}

GoRoute get $studentCreateRoute => GoRouteData.$route(
      path: '/student_create',
      factory: $StudentCreateRouteExtension._fromState,
    );

extension $StudentCreateRouteExtension on StudentCreateRoute {
  static StudentCreateRoute _fromState(GoRouterState state) =>
      const StudentCreateRoute();

  String get location => GoRouteData.$location(
        '/student_create',
      );

  void go(BuildContext context) => context.go(location, extra: this);

  void push(BuildContext context) => context.push(location, extra: this);
}

GoRoute get $studentCreateSuccessRoute => GoRouteData.$route(
      path: '/student_create_success',
      factory: $StudentCreateSuccessRouteExtension._fromState,
    );

extension $StudentCreateSuccessRouteExtension on StudentCreateSuccessRoute {
  static StudentCreateSuccessRoute _fromState(GoRouterState state) =>
      const StudentCreateSuccessRoute();

  String get location => GoRouteData.$location(
        '/student_create_success',
      );

  void go(BuildContext context) => context.go(location, extra: this);

  void push(BuildContext context) => context.push(location, extra: this);
}
