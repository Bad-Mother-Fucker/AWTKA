import 'package:awtka/main_controller/local_config_controller.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:pocketbase_scaffold/pocketbase_scaffold.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import 'router_notifier.dart';
import 'routes.dart';

part 'router.g.dart';

final _key = GlobalKey<NavigatorState>(debugLabel: 'routerKey');

/// This simple provider caches our GoRouter.
/// This provider will never rebuild by design.
@riverpod
GoRouter router(RouterRef ref) {
  // This instruction keeps this notifier alive
  // We don't really care of its value, and neither we want to rebuild on its changes.
  final sub = ref.listen(routerNotifierProvider, (_, __) {});
  ref.onDispose(sub.close);

  final notifier = ref.read(routerNotifierProvider.notifier);

  ref.watch(authProvider);
  final authNotifier = ref.read(authProvider.notifier);

  return GoRouter(
    navigatorKey: _key,
    // refreshListenable: notifier,
    debugLogDiagnostics: true,
    initialLocation: LoginRoute.path,
    routes: notifier.routes,
    redirect: (context, state) {
      // If our async state is loading, don't perform redirects, yet
      if (authNotifier.isLoading) return null;

      final isAuth = authNotifier.isAuthenticated;
      final isLoggingIn = state.subloc == LoginRoute.path;

      if (isLoggingIn) return isAuth ? HomeRoute.path : null;

      // not logout but go to reset pass route -> push to home 
      final isResetPassword = state.subloc == ResetPasswordRoute.path;
      if (isResetPassword) {
        return isAuth ? HomeRoute.path : null;
      }

      return isAuth ? null : LoginRoute.path;
    },
  );
}
