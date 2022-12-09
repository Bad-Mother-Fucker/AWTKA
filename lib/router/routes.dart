import 'dart:async';

import 'package:awtka/features/login/pages/reset_password_page.dart';
import 'package:awtka/features/student/pages/find_student_page.dart';
import 'package:awtka/features/student/pages/student_create_page.dart';
import 'package:awtka/features/student/pages/student_create_success_page.dart';
import 'package:awtka/features/student/pages/student_edit_profile_page.dart';
import 'package:awtka/features/student/pages/student_edit_success_page.dart';
import 'package:awtka/features/student/pages/student_info_page.dart';
import 'package:awtka/features/welcome/pages/welcome_page.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:awtka/features/home/pages/home_page.dart';
import 'package:awtka/features/welcome/pages/splash_page.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../features/login/pages/login_page.dart';

part 'routes.g.dart';

@TypedGoRoute<SplashRoute>(path: SplashRoute.path)
class SplashRoute extends GoRouteData {
  const SplashRoute();
  static const path = '/splash';

  @override
  NoTransitionPage<void> buildPageWithState(
      BuildContext context, GoRouterState state) {
    return const NoTransitionPage<void>(
      child: SplashPage(),
    );
  }
}

@TypedGoRoute<WelcomeRoute>(path: WelcomeRoute.path)
class WelcomeRoute extends GoRouteData {
  const WelcomeRoute();
  static const path = '/welcome';

  @override
  NoTransitionPage<void> buildPageWithState(
      BuildContext context, GoRouterState state) {
    return const NoTransitionPage<void>(
      child: WelcomePage(),
    );
  }
}

@TypedGoRoute<HomeRoute>(
  path: HomeRoute.path,
)
class HomeRoute extends GoRouteData {
  const HomeRoute();
  static const path = '/home';

  @override
  FutureOr<String?> redirect() {
    // This route should be responsible for redirecting through the correct pages
    // But we can't access `context` nor `GoRouteState`.
    // This is because GoRouterBuilder is still "kinda" new.
    // Please upvote this issue https://github.com/flutter/flutter/issues/115955
    // And track this PR https://github.com/flutter/packages/pull/2848
    // And then, wait for GoRouter 5.3.0

    // TODO implement route-level redirection logic based on user permissions
    return null;
  }

  @override
  Widget build(BuildContext context) {
    return const HomePage();
  }
}

@TypedGoRoute<LoginRoute>(path: LoginRoute.path)
class LoginRoute extends GoRouteData {
  const LoginRoute();
  static const path = '/login';

  @override
  NoTransitionPage<void> buildPageWithState(
      BuildContext context, GoRouterState state) {
    return NoTransitionPage<void>(
      child: LoginPage(
        authCode: state.queryParams['code'],
      ),
    );
  }
}

@TypedGoRoute<ResetPasswordRoute>(path: ResetPasswordRoute.path)
class ResetPasswordRoute extends GoRouteData {
  const ResetPasswordRoute();
  static const path = '/reset_password';

  @override
  Widget build(BuildContext context) {
    return const ResetPasswordPage();
  }
}

@TypedGoRoute<FindStudentRoute>(path: FindStudentRoute.path)
class FindStudentRoute extends GoRouteData {
  const FindStudentRoute();
  static const path = '/find_student';

  @override
  Widget build(BuildContext context) {
    return const FindStudentPage();
  }
}

@TypedGoRoute<StudentInfoRoute>(path: StudentInfoRoute.path)
class StudentInfoRoute extends GoRouteData {
  const StudentInfoRoute();
  static const path = '/student_info';

  @override
  MaterialPage<void> buildPageWithState(
      BuildContext context, GoRouterState state) {
    return MaterialPage<void>(
      child: StudentInfoPage(
        id: (state.extra as Map<String, dynamic>)['id'].toString(),
      ),
    );
  }
}

@TypedGoRoute<StudentEditProfileRoute>(path: StudentEditProfileRoute.path)
class StudentEditProfileRoute extends GoRouteData {
  const StudentEditProfileRoute();
  static const path = '/student_edit_profile';

  @override
  MaterialPage<void> buildPageWithState(
      BuildContext context, GoRouterState state) {
    return MaterialPage<void>(
      child: StudentEditProfilePage(
        id: (state.extra as Map<String, dynamic>)['id'].toString(),
      ),
    );
  }
}

@TypedGoRoute<StudentEditSuccessRoute>(path: StudentEditSuccessRoute.path)
class StudentEditSuccessRoute extends GoRouteData {
  const StudentEditSuccessRoute();
  static const path = '/student_edit_success';

  @override
  MaterialPage<void> buildPageWithState(
      BuildContext context, GoRouterState state) {
    return MaterialPage<void>(
      child: StudentEditSuccessPage(
        id: (state.extra as Map<String, dynamic>)['id'].toString(),
      ),
    );
  }
}

@TypedGoRoute<StudentCreateRoute>(path: StudentCreateRoute.path)
class StudentCreateRoute extends GoRouteData {
  const StudentCreateRoute();
  static const path = '/student_create';

  @override
  MaterialPage<void> buildPageWithState(
      BuildContext context, GoRouterState state) {
    return const MaterialPage<void>(
      child: StudentCreatePage(),
    );
  }
}

@TypedGoRoute<StudentCreateSuccessRoute>(path: StudentCreateSuccessRoute.path)
class StudentCreateSuccessRoute extends GoRouteData {
  const StudentCreateSuccessRoute();
  static const path = '/student_create_success';

  @override
  MaterialPage<void> buildPageWithState(
      BuildContext context, GoRouterState state) {
    return MaterialPage<void>(
      child: StudentCreateSuccessPage(
        id: (state.extra as Map<String, dynamic>)['id'].toString(),
      ),
    );
  }
}
