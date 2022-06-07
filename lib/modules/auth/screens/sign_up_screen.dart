import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:smartgk/app/smart_gk_router.gr.dart';
import 'package:smartgk/modules/auth/widgets/login_signup_layout.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LoginSignUpLayout(
      onSecondaryButtonTap: () => context.router.push(const LoginScreen()),
      isLogin: false,
    );
  }
}
