import 'dart:async';

import 'package:awtka/features/login/pages/reset_password_page.dart';
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

  @override
  Widget build(BuildContext context) {
    return const WelcomePage();
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
  Widget build(BuildContext context) {
    return const LoginPage();
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
