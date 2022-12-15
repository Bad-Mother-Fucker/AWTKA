import 'package:awtka/features/login/widgets/login_body.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class LoginPage extends ConsumerWidget {
  const LoginPage({
    super.key,
    this.authCode,
  });

  final String? authCode;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      backgroundColor: const Color(0xff1c1c23),
      body: LoginBodyWidget(
        authCode: authCode,
      ),
    );
  }
}
