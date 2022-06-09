import 'package:auto_route/auto_route.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:smartgk/modules/auth/widgets/auth_scaffold.dart';

import '../../../app/smart_gk_router.gr.dart';
import '../../../global_widgets/buttons/primary_button.dart';
import '../../../global_widgets/helper_widget/black_space.dart';
import '../../../global_widgets/textfield/text_field.dart';

class LoginSignUpLayout extends StatefulWidget {
  final bool isLogin;
  final VoidCallback? onPrimaryButtonTap;
  final VoidCallback? onSecondaryButtonTap;
  const LoginSignUpLayout(
      {Key? key,
      this.onPrimaryButtonTap,
      this.onSecondaryButtonTap,
      required this.isLogin})
      : super(key: key);

  @override
  State<LoginSignUpLayout> createState() => _LoginSignUpLayoutState();
}

class _LoginSignUpLayoutState extends State<LoginSignUpLayout> {
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _confirmPasswordController =
      TextEditingController();
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final namefocusNode = FocusNode();
  final passfocusNode = FocusNode();
  final confirmfocusNode = FocusNode();
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return AuthScaffold(
      child: SingleChildScrollView(
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              VerticalSpace(104.h),
              Text.rich(
                TextSpan(
                  text: widget.isLogin ? 'Welcome Back' : 'Hello',
                  style: Theme.of(context)
                      .textTheme
                      .headline1
                      ?.copyWith(fontSize: 28),
                  children: [
                    TextSpan(
                      text: widget.isLogin
                          ? "\nLogin in to your Account"
                          : '\nSign Up as a Member',
                      style: theme.textTheme.bodyText1?.copyWith(
                        color: Colors.black,
                        fontSize: 20,
                      ),
                      recognizer: TapGestureRecognizer()..onTap = () {},
                    ),
                  ],
                ),
                style: theme.textTheme.bodyText1?.copyWith(
                  color: theme.colorScheme.onSecondary,
                ),
                textAlign: TextAlign.center,
              ),
              VerticalSpace(35.h),
              PrimaryTextField(
                  controller: _nameController,
                  curentFocusNode: namefocusNode,
                  nextFocusNodes: passfocusNode,
                  label: 'Email Address',
                  hintText: 'Enter your Email'),
              VerticalSpace(10.h),
              PrimaryTextField(
                  controller: _passwordController,
                  curentFocusNode: passfocusNode,
                  nextFocusNodes: widget.isLogin ? null : confirmfocusNode,
                  label: widget.isLogin ? 'Password' : 'Create Password',
                  hintText: widget.isLogin
                      ? "Enter Your Password"
                      : 'Create a Password'),
              VerticalSpace(widget.isLogin ? 0 : 10.h),
              Visibility(
                visible: !widget.isLogin,
                child: PrimaryTextField(
                    controller: _confirmPasswordController,
                    curentFocusNode: confirmfocusNode,
                    label: 'Confirm Password',
                    hintText: 'Confirm your Password'),
              ),
              VerticalSpace(widget.isLogin ? 5.h : 15.h),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 40),
                child: widget.isLogin
                    ? Align(
                        alignment: Alignment.centerRight,
                        child: Text(
                          'Forgot Password ?',
                          style: theme.textTheme.bodyText1,
                        ),
                      )
                    : RichText(
                        text: TextSpan(
                            text: 'By Signing in, you are agreeing to the',
                            style: theme.textTheme.bodyText2?.copyWith(
                              fontSize: 14,
                            ),
                            children: <TextSpan>[
                              TextSpan(
                                  text: '\nTerms and Conditions',
                                  style: theme.textTheme.bodyText1?.copyWith(
                                    fontSize: 15,
                                  ),
                                  recognizer: TapGestureRecognizer()
                                    ..onTap = () {
                                      // navigate to desired screen
                                    }),
                              TextSpan(
                                text: ' and ',
                                style: theme.textTheme.bodyText2
                                    ?.copyWith(fontSize: 14),
                              ),
                              TextSpan(
                                  text: 'Privacy Policy.',
                                  style: theme.textTheme.bodyText1?.copyWith(
                                    fontSize: 15,
                                  ),
                                  recognizer: TapGestureRecognizer()
                                    ..onTap = () {
                                      // navigate to desired screen
                                    })
                            ]),
                      ),
              ),
              VerticalSpace(15.h),
              PrimaryButton(
                onPressed: widget.onPrimaryButtonTap,
                label: widget.isLogin ? 'Log in' : 'Sign Up',
              ),
              VerticalSpace(15.h),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const Spacer(),
                  Container(
                    height: 1,
                    width: 70.w,
                    color: theme.colorScheme.primary,
                  ),
                  HorizSpace(10.w),
                  Text(
                      widget.isLogin ? 'Or continue with' : 'Or register with'),
                  HorizSpace(10.w),
                  Container(
                    height: 1,
                    width: 70.w,
                    color: theme.colorScheme.primary,
                  ),
                  const Spacer()
                ],
              ),
              VerticalSpace(15.h),
              //Social media login section
              GestureDetector(
                onTap: (() => context.router.push(const CategoryListScreen())),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ...['', 'fb', 'google'].map((e) => Container(
                          margin: const EdgeInsets.all(5),
                          height: 51.h,
                          width: 51.h,
                          decoration: const BoxDecoration(
                              color: Colors.white, shape: BoxShape.circle),
                        ))
                  ],
                ),
              ),
              VerticalSpace(15.h),
              //End of social media login section
              RichText(
                text: TextSpan(
                    text: 'ALready a member?',
                    style: theme.textTheme.bodyText2,
                    children: <TextSpan>[
                      TextSpan(
                        text: widget.isLogin ? ' Register' : ' Login',
                        style: theme.textTheme.bodyText1
                            ?.copyWith(fontWeight: FontWeight.w600),
                        recognizer: TapGestureRecognizer()
                          ..onTap = widget.onSecondaryButtonTap,
                      ),
                    ]),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
