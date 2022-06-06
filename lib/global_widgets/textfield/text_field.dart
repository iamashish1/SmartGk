import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:smartgk/constants/widget_constants.dart';
import 'package:smartgk/global_widgets/helper_widget/black_space.dart';

class PrimaryTextField extends StatelessWidget {
  final String? label;
  final String? hintText;
  const PrimaryTextField({Key? key, this.label, this.hintText})
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
              decoration: InputDecoration(
                border: InputBorder.none,
                hintText: hintText,
                hintStyle: theme.textTheme.bodyText1
                    ?.copyWith(color: theme.colorScheme.onSecondary),
                contentPadding: const EdgeInsets.symmetric(horizontal: 12),
              ),
            ),
          ),
        )
      ],
    );
  }
}
