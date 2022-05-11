import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AuthButton extends StatelessWidget {
  const AuthButton({
    Key? key,
    this.onPressed,
    this.color,
    this.height,
    this.width,
    this.shapeBorder,
    this.child,
    this.elevation,
    this.btnText,
  }) : super(key: key);
  final void Function()? onPressed;
  final Color? color;
  final double? height;
  final double? width;
  final ShapeBorder? shapeBorder;
  final Widget? child;
  final String? btnText;
  final double? elevation;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return MaterialButton(
      onPressed: onPressed,
      color: color ?? theme.colorScheme.background,
      height: height ?? 60.h,
      minWidth: width ?? 323.w,
      elevation: elevation ?? 0,
      shape: shapeBorder ??
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16),
          ),
      child: child ??
          Center(
            child: Text(
              btnText ?? 'Register',
              style: theme.textTheme.button,
            ),
          ),
    );
  }
}
