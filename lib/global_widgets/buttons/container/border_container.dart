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
        margin: margin ?? const EdgeInsets.symmetric(horizontal: 20),
        padding: padding ?? EdgeInsets.symmetric(horizontal: 15, vertical: 10),
        height: height,
        width: width,
        decoration: BoxDecoration(
          color: color ?? Colors.white,
          borderRadius: borderRadius ?? BorderRadius.circular(10),
          border: Border.all(color: theme.colorScheme.primary),
        ),
        child: child,
      ),
    );
  }
}
