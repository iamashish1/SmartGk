import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class PrimaryButton extends StatelessWidget {
  const PrimaryButton({
    Key? key,
    this.onPressed,
    this.color,
    this.height,
    this.width,
    this.shapeBorder,
    this.child,
    this.elevation,
    required this.label,
    this.labelStyle,
    this.radius,
    this.align,
  }) : super(key: key);
  final void Function()? onPressed;
  final Color? color;
  final double? radius;
  final TextStyle? labelStyle;
  final double? height;
  final double? width;
  final AlignmentGeometry? align;
  final ShapeBorder? shapeBorder;
  final Widget? child;
  final String label;
  final double? elevation;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Align(
      alignment: align ?? Alignment.topCenter,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(
          radius ?? 10,
        ),
        child: Material(
          color: color ?? theme.colorScheme.primary,
          child: InkWell(
            splashColor: Colors.white.withOpacity(
              0.5,
            ),
            onTap: onPressed,
            child: Container(
              height: height ?? 50.h,
              width: width ?? 310.w,
              decoration: const BoxDecoration(
                color: Colors.transparent,
              ),
              child: child ??
                  Center(
                    child: Text(
                      label,
                      style: labelStyle ?? theme.textTheme.button,
                    ),
                  ),
            ),
          ),
        ),
      ),
    );
  }
}
