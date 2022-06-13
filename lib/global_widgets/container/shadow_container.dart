import 'package:flutter/material.dart';

import '../../../constants/widget_constants.dart';

class ShadowContainer extends StatelessWidget {
  final EdgeInsetsGeometry? padding;
  final EdgeInsetsGeometry? margin;
  final Widget child;
  const ShadowContainer(
      {Key? key, required this.child, this.padding, this.margin})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Colors.white,
          boxShadow: [
            BoxShadow(
                blurRadius: 12,
                spreadRadius: 2,
                color: Colors.grey.withOpacity(0.3),
                offset: const Offset(2, 2))
          ]),
      margin: margin ??
          defaultPadding.copyWith(
            top: 15,
            bottom: 15,
          ),
      padding: padding ?? const EdgeInsets.symmetric(vertical: 15),
      child: child,
    );
  }
}
