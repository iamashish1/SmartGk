import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:smartgk/global_widgets/buttons/auth_button.dart';
import 'package:smartgk/global_widgets/helper_widget/black_space.dart';
import 'package:smartgk/global_widgets/textfield/text_field.dart';
import 'package:smartgk/modules/auth/widgets/auth_scaffold.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return AuthScaffold(
      child: SingleChildScrollView(
        child: Column(
          children: [
            VerticalSpace(104.h),
            Text.rich(
              TextSpan(
                text: 'Hello',
                style: Theme.of(context)
                    .textTheme
                    .headline1
                    ?.copyWith(fontSize: 28),
                children: [
                  TextSpan(
                    text: '\nSign Up as a Member',
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
            const PrimaryTextField(
                label: 'Email Address', hintText: 'Enter your Email'),
            VerticalSpace(10.h),
            const PrimaryTextField(
                label: 'Create Password', hintText: 'Create a Password'),
            VerticalSpace(10.h),
            const PrimaryTextField(
                label: 'Confirm Password', hintText: 'Confirm your Password'),
            VerticalSpace(15.h),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 40),
              child: RichText(
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
                        style:
                            theme.textTheme.bodyText2?.copyWith(fontSize: 14),
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
            const AuthButton(
              label: 'Sign Up',
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
                const Text('Or register with'),
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
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ...['apple', 'fb', 'google'].map((e) => Container(
                      margin: const EdgeInsets.all(5),
                      height: 51.h,
                      width: 51.h,
                      decoration: const BoxDecoration(
                          color: Colors.white, shape: BoxShape.circle),
                    ))
              ],
            ),
            VerticalSpace(15.h),
            //End of social media login section
            RichText(
              text: TextSpan(
                  text: 'ALready a member?',
                  style: theme.textTheme.bodyText2,
                  children: <TextSpan>[
                    TextSpan(
                      text: ' Login',
                      style: theme.textTheme.bodyText1,
                    ),
                  ]),
            ),
          ],
        ),
      ),
    );
  }
}
