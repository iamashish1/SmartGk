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
    required this.label,
  }) : super(key: key);
  final void Function()? onPressed;
  final Color? color;
  final double? height;
  final double? width;
  final ShapeBorder? shapeBorder;
  final Widget? child;
  final String label;
  final double? elevation;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return InkWell(
      onTap: () => onPressed,
      child: Container(
        height: height ?? 50.h,
        width: width ?? 310.w,
        decoration: BoxDecoration(
          color: color ?? theme.colorScheme.background,
          borderRadius: BorderRadius.circular(10),
        ),
        child: child ??
            Center(
              child: Text(
                label,
                style: theme.textTheme.button,
              ),
            ),
      ),
    );
  }
}
