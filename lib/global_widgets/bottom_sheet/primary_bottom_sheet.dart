import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:smartgk/global_widgets/helper_widget/black_space.dart';

class PrimaryBottomSheet {
  static showModal(
      {required BuildContext context, required Widget child, double? height}) {
    showModalBottomSheet(
        isScrollControlled: true,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(22.0),
        ),
        enableDrag: true,
        isDismissible: false,
        context: context,
        builder: (context) {
          final theme = Theme.of(context);
          return SizedBox(
              height: height ?? 229.h,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                    Container(
                      margin: EdgeInsets.only(top: 15.h),
                      height: 9.h,
                      width: 113.w,
                      decoration: BoxDecoration(
                        color: theme.colorScheme.primary,
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                  ]),
                  VerticalSpace(10.h),
                  child
                ],
              ));
        });
  }
}
