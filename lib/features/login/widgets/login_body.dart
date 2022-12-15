import 'package:awtka/common/bounceable.dart';
import 'package:awtka/common/check_box.dart';
import 'package:awtka/common/loader_widget.dart';
import 'package:awtka/common/text_field.dart';
import 'package:awtka/features/home/controllers/home_controller.dart';
import 'package:awtka/globals.dart';
import 'package:awtka/router/routes.dart';
import 'package:flutter/material.dart';
import 'package:awtka/utils.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_signin_button/flutter_signin_button.dart';
import 'package:go_router/go_router.dart';
import 'package:pocketbase_scaffold/pocketbase_scaffold.dart';

final authServicesProvider = FutureProvider(
    (ref) async => await ref.watch(userServiceProvider).listAuthMethods());

final loadingProvider = StateProvider<bool>((ref) {
  return false;
});

class LoginBodyWidget extends ConsumerStatefulWidget {
  const LoginBodyWidget({
    super.key,
    this.authCode,
  });

  final String? authCode;

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _LoginBodyWidgetState();
}

class _LoginBodyWidgetState extends ConsumerState<LoginBodyWidget> {
  @override
  void initState() {
    final authCode = widget.authCode;
    if (authCode != null && authCode.isNotEmpty) {
      ref.read(authProvider.notifier).authWithOAuth2(authCode);
    }
    super.initState();
  }

  _onClickForgot(BuildContext context) {
    context.push(ResetPasswordRoute.path);
  }

  @override
  Widget build(BuildContext context) {
    double baseWidth = 375;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;

    final authProviders = ref.watch(authServicesProvider);
    final isOscureText = ref.watch(isOscureTextProvider);

    onClickLogin() async {
      if (ref.read(loadingProvider)) return;
      try {
        ref.read(loadingProvider.notifier).state = true;
        final username = ref.read(appTextFieldProvider('login_username'));
        final password = ref.read(appTextFieldProvider('login_password'));
        // final rememberMe = ref.read(appCheckBoxProvider('login_remember_me'));
        await ref
            .read(authProvider.notifier)
            .authWithPassword(username, password);
        ref.invalidate(homeTabIndexProvider);
      } catch (e, s) {
        showSnackBar(contentText: '$e, $s');
      } finally {
        ref.read(loadingProvider.notifier).state = false;
      }
    }

    ref.listen(authProvider, (_, state) {
      if (state is Unauthenticated) {
        if (state.message == null) {
          showSnackBar(
            contentText:
                'The username or password is not correct. Please try again.',
          );

          return;
        }

        showSnackBar(
          contentText: state.message ?? 'NaN',
        );
      }
    });

    if (widget.authCode != null) {
      return const LoaderWidget();
    }

    final isLoading = ref.watch(loadingProvider);

    return SingleChildScrollView(
      child: Container(
        // loginqPg (1:28)
        padding: EdgeInsets.fromLTRB(19 * fem, 0 * fem, 29 * fem, 0 * fem),
        width: double.infinity,
        decoration: const BoxDecoration(
          color: Color(0xff1c1c23),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SafeArea(
              bottom: false,
              child: SizedBox(),
            ),
            // const Spacer(),
            Container(
              // effettuailloginWEv (3:471)
              margin:
                  EdgeInsets.fromLTRB(0 * fem, 100 * fem, 116 * fem, 40 * fem),
              constraints: BoxConstraints(
                maxWidth: 200 * fem,
              ),
              child: RichText(
                text: TextSpan(
                  style: SafeGoogleFont(
                    'DM Sans',
                    fontSize: 40 * ffem,
                    fontWeight: FontWeight.w700,
                    height: 0.9469999313 * ffem / fem,
                    color: const Color(0xffffffff),
                  ),
                  children: [
                    const TextSpan(
                      text: 'Effettua il\n',
                    ),
                    TextSpan(
                      text: 'Login',
                      style: SafeGoogleFont(
                        'DM Sans',
                        fontSize: 40 * ffem,
                        fontWeight: FontWeight.w700,
                        height: 0.9469999313 * ffem / fem,
                        color: const Color(0xffef233c),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Container(
              // inputlogin89p (1:42)
              margin: EdgeInsets.fromLTRB(0 * fem, 0 * fem, 0 * fem, 16 * fem),
              width: double.infinity,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    // login2W6 (1:43)
                    margin:
                        EdgeInsets.fromLTRB(0 * fem, 0 * fem, 0 * fem, 4 * fem),
                    child: Text(
                      'Login',
                      style: SafeGoogleFont(
                        'Inter',
                        fontSize: 12 * ffem,
                        fontWeight: FontWeight.w500,
                        height: 1.3333333333 * ffem / fem,
                        letterSpacing: 0.200000003 * fem,
                        color: const Color(0xff666680),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 48 * fem,
                    child: const AppTextField(
                      id: 'login_username',
                      padding: EdgeInsets.symmetric(horizontal: 12),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              // inputpasswordz5Y (1:45)
              margin: EdgeInsets.fromLTRB(0 * fem, 0 * fem, 0 * fem, 24 * fem),
              width: double.infinity,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    // passwordVnz (1:46)
                    margin:
                        EdgeInsets.fromLTRB(0 * fem, 0 * fem, 0 * fem, 4 * fem),
                    child: Text(
                      'Password',
                      style: SafeGoogleFont(
                        'Inter',
                        fontSize: 12 * ffem,
                        fontWeight: FontWeight.w500,
                        height: 1.3333333333 * ffem / fem,
                        letterSpacing: 0.200000003 * fem,
                        color: const Color(0xff666680),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 48 * fem,
                    child: AppTextField(
                      id: 'login_password',
                      isPassword: isOscureText,
                      suffixIcon: IconButton(
                        padding: EdgeInsets.zero,
                        onPressed: () => ref
                            .read(isOscureTextProvider.notifier)
                            .update((state) => !isOscureText),
                        icon: !isOscureText
                            ? const Icon(
                                Icons.visibility,
                                color: Colors.white,
                                size: 18,
                              )
                            : const Icon(
                                Icons.visibility_off,
                                color: Colors.white,
                                size: 18,
                              ),
                      ),
                    ),
                  )
                ],
              ),
            ),
            Container(
              // autogroupxyewEtz (GF8rfqprDdyZ7x546AXYeW)
              margin: EdgeInsets.fromLTRB(0 * fem, 0 * fem, 8 * fem, 24 * fem),
              width: double.infinity,
              height: 24 * fem,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    // autolayouthorizontalLBL (1:39)
                    margin: EdgeInsets.fromLTRB(
                        0 * fem, 0 * fem, 65.5 * fem, 0 * fem),
                    height: double.infinity,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        const AppCheckBox(id: 'login_remember_me'),
                        Text(
                          // rememberme75c (1:41)
                          'Remember me',
                          textAlign: TextAlign.center,
                          style: SafeGoogleFont(
                            'Inter',
                            fontSize: 14 * ffem,
                            fontWeight: FontWeight.w400,
                            height: 1.4285714286 * ffem / fem,
                            letterSpacing: 0.200000003 * fem,
                            color: const Color(0xff666680),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Bounceable(
                    onTap: () {
                      _onClickForgot(context);
                    },
                    child: Text(
                      // forgotpassowordDPY (1:38)
                      'Forgot passoword',
                      textAlign: TextAlign.center,
                      style: SafeGoogleFont(
                        'Inter',
                        fontSize: 14 * ffem,
                        fontWeight: FontWeight.w400,
                        height: 1.4285714286 * ffem / fem,
                        letterSpacing: 0.200000003 * fem,
                        color: const Color(0xff666680),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Bounceable(
              onTap: () {
                onClickLogin();
              },
              child: Container(
                // button7zi (1:48)
                margin:
                    EdgeInsets.fromLTRB(2 * fem, 50 * fem, 1 * fem, 0 * fem),
                width: double.infinity,
                height: 48 * fem,
                decoration: BoxDecoration(
                  color: const Color(0xffff7966),
                  borderRadius: BorderRadius.circular(999 * fem),
                  border: const Border(),
                ),
                child: Center(
                  child: isLoading
                      ? const LoaderWidget()
                      : Text(
                          'Sign In',
                          style: SafeGoogleFont(
                            'Inter',
                            fontSize: 14 * ffem,
                            fontWeight: FontWeight.w600,
                            height: 1.4285714286 * ffem / fem,
                            color: const Color(0xffffffff),
                          ),
                        ),
                ),
              ),
            ),
            const SizedBox(height: 30),
            Container(
              // senonhaiancoraunaccountcontatt (1:29)
              margin: EdgeInsets.fromLTRB(9 * fem, 0 * fem, 0 * fem, 0 * fem),
              constraints: BoxConstraints(
                maxWidth: 250 * fem,
              ),
              child: authProviders.when(
                data: (data) => Column(
                  children: data.authProviders
                      .map((provider) => SignInButton(
                            Buttons.GoogleDark,
                            onPressed: () => ref
                                .read(authProvider.notifier)
                                .loginProvider(provider),
                          ))
                      .toList(),
                ),
                error: (error, stackTrace) => Text(error.toString()),
                loading: () => const LinearProgressIndicator(),
              ),
            ),
            SafeArea(
              top: false,
              child: Container(
                // senonhaiancoraunaccountcontatt (1:29)
                margin:
                    EdgeInsets.fromLTRB(9 * fem, 80 * fem, 0 * fem, 20 * fem),
                constraints: BoxConstraints(
                  maxWidth: 250 * fem,
                ),
                child: Text(
                  'Se non hai ancora un account, contatta l’amministrazione per ottenere un account.',
                  textAlign: TextAlign.center,
                  style: SafeGoogleFont(
                    'Inter',
                    fontSize: 12 * ffem,
                    fontWeight: FontWeight.w500,
                    height: 1.3333333333 * ffem / fem,
                    letterSpacing: 0.200000003 * fem,
                    color: const Color(0xff666680),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
