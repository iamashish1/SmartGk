import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:smartgk/global_widgets/helper_widget/black_space.dart';

class PrimaryTextField extends StatelessWidget {
  final TextEditingController? controller;
  final String? label;
  final String? hintText;
  final FocusNode? nextFocusNodes;
  final FocusNode? curentFocusNode;
  const PrimaryTextField(
      {Key? key,
      this.label,
      this.nextFocusNodes,
      this.curentFocusNode,
      this.controller,
      this.hintText})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Column(
      children: [
        Align(
          alignment: Alignment.centerLeft,
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 50.w),
            child: Text(
              label ?? '',
              style: theme.textTheme.bodyText1
                  ?.copyWith(fontWeight: FontWeight.w500),
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
              color: Colors.white,
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
                contentPadding: const EdgeInsets.symmetric(horizontal: 12),
              ),
            ),
          ),
        )
      ],
    );
  }
}
