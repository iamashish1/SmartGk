import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class BorderContainer extends StatelessWidget {
  final BorderRadiusGeometry? borderRadius;
  final double? height;
  final Color? color;
  final double? width;
  final Widget? child;
  final EdgeInsetsGeometry? margin;
  final EdgeInsetsGeometry? padding;
  const BorderContainer({
    Key? key,
    this.child,
    this.borderRadius,
    this.padding,
    this.color,
    this.margin,
    this.height,
    this.width,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Align(
      alignment: Alignment.topCenter,
      child: Container(
        margin: margin,
        padding: padding,
        height: height ?? 0,
        width: width ?? 350.w,
        decoration: BoxDecoration(
          color: color,
          borderRadius: borderRadius ?? BorderRadius.circular(10),
          border: Border.all(color: theme.colorScheme.primary),
        ),
        child: child,
      ),
    );
  }
}
