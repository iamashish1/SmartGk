import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:matrimonial/constants/assets_constants.dart';
import 'package:matrimonial/utils/print_util.dart';
import 'package:matrimonial/widgets/common/matrimonial_scaffold.dart';
import 'package:matrimonial/widgets/simpleWidgets/auth_button.dart';

class Splash extends StatelessWidget {
  const Splash({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return MatrimonialScaffold(
      shouldUseAppBar: false,
      backgroundColor: theme.colorScheme.primary,
      body: Padding(
        padding: EdgeInsets.only(left: 26.w, right: 26.w),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            SizedBox(
              height: 91.h,
            ),
            Image(
              image: const AssetImage(
                AssetsConstants.splashNepaliWedding,
              ),
              height: 332.h,
              width: 322.w,
              alignment: AlignmentDirectional.center,
            ),
            SizedBox(
              height: 41.h,
            ),
            Text(
              'Meet your perfect match',
              style: theme.textTheme.headline1?.copyWith(color: Colors.white),
              textAlign: TextAlign.center,
            ),
            SizedBox(
              height: 15.h,
            ),
            Text.rich(
              TextSpan(
                text: 'Please read our ',
                children: [
                  TextSpan(
                    text: 'privacy policy',
                    style: theme.textTheme.bodyText2?.copyWith(
                      decoration: TextDecoration.underline,
                      decorationThickness: 3,
                      color: Colors.white,
                    ),
                    recognizer: TapGestureRecognizer()
                      ..onTap = () {
                        mPrint('privacy policy clicked');
                      },
                  ),
                  TextSpan(
                    text: ' \nand ',
                    style: theme.textTheme.bodyText2?.copyWith(
                      color: Colors.white,
                    ),
                  ),
                  TextSpan(
                    text: 'terms and condition',
                    style: theme.textTheme.bodyText2?.copyWith(
                      decoration: TextDecoration.underline,
                      decorationThickness: 3,
                      color: Colors.white,
                    ),
                    recognizer: TapGestureRecognizer()
                      ..onTap = () {
                        mPrint('terms and condition clicked');
                      },
                  ),
                  TextSpan(
                    text: ' before registering.',
                    style: theme.textTheme.bodyText2?.copyWith(
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
              style: theme.textTheme.bodyText2?.copyWith(
                color: Colors.white,
              ),
              textAlign: TextAlign.center,
            ),
            SizedBox(
              height: 39.h,
            ),
            AuthButton(
              btnText: 'Register',
              onPressed: () {},
            ),
            SizedBox(
              height: 20.h,
            ),
            AuthButton(
              btnText: 'Login',
              onPressed: () {},
            ),
          ],
        ),
      ),
    );
  }
}
