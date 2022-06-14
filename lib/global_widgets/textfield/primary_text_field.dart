import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:smartgk/global_widgets/helper_widget/black_space.dart';

class PrimaryTextField extends StatelessWidget {
  final TextEditingController? controller;
  final String? label;
  final Color? color;
  final String? hintText;
  final TextStyle? labelStyle;
  final bool? hasBorder;
  final FocusNode? nextFocusNodes;
  final FocusNode? curentFocusNode;
  final EdgeInsetsGeometry? padding;
  const PrimaryTextField(
      {Key? key,
      this.label,
      this.color,
      this.labelStyle,
      this.nextFocusNodes,
      this.curentFocusNode,
      this.controller,
      this.hintText,
      this.hasBorder,
      this.padding})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Column(
      children: [
        Align(
          alignment: Alignment.centerLeft,
          child: Padding(
            padding: padding ?? EdgeInsets.symmetric(horizontal: 50.w),
            child: Text(
              label ?? '',
              style: labelStyle ??
                  theme.textTheme.bodyText1?.copyWith(
                    fontWeight: FontWeight.w600,
                  ),
            ),
          ),
        ),
        VerticalSpace(5.h),
        Align(
          alignment: Alignment.center,
          child: Container(
            width: 310.w,
            height: 50.h,
            decoration: BoxDecoration(
              border: hasBorder == null || hasBorder == false
                  ? null
                  : Border.all(width: 1, color: theme.colorScheme.primary),
              color: color ?? Colors.white,
              borderRadius: BorderRadius.circular(10),
            ),
            child: TextFormField(
              onFieldSubmitted: (nextFocusNodes != null)
                  ? (value) =>
                      FocusScope.of(context).requestFocus(nextFocusNodes)
                  : (value) {},
              focusNode: curentFocusNode,
              controller: controller,
              decoration: InputDecoration(
                border: InputBorder.none,
                hintText: hintText,
                hintStyle: theme.textTheme.bodyText2?.copyWith(
                  fontSize: 16,
                ),
                contentPadding: const EdgeInsets.symmetric(horizontal: 12),
              ),
            ),
          ),
        )
      ],
    );
  }
}
