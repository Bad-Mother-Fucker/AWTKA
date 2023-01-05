import 'dart:async';

import 'package:awtka/router/routes.dart';
import 'package:awtka/utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

class SplashPage extends ConsumerStatefulWidget {
  const SplashPage({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _SplashPageState();
}

class _SplashPageState extends ConsumerState<SplashPage> with AfterLayoutMixin {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color(0xff1c1c23),
    );
  }

  @override
  FutureOr<void> afterFirstLayout(BuildContext context) {
    context.push(WelcomeRoute.path);
  }
}
