import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:smartgk/constants/assets_constants.dart';
import 'package:smartgk/global_widgets/helper_widget/black_space.dart';


class CustomBottomSheet {
  static showModal(context) {
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
              height: 229.h,
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
                  Padding(
                    padding: const EdgeInsets.only(left: 30.0),
                    child: Text(
                      'Options',
                      style: theme.textTheme.headline1?.copyWith(fontSize: 22),
                    ),
                  ),
                  VerticalSpace(11.h),
                  Divider(
                    height: 1,
                    color: theme.colorScheme.primary,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 25.0, vertical: 10),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        SvgPicture.asset(AssetsConstants.mailIconSvg),
                        HorizSpace(20.w),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: const [
                              Text('Mark as Read'),
                              Text('Mark the notification as read.')
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                  Divider(
                    indent: 20.w,
                    endIndent: 20.w,
                    height: 1,
                    color: theme.colorScheme.primary,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 25.0, vertical: 10),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        SvgPicture.asset(AssetsConstants.deleteIconSvg),
                        HorizSpace(20.w),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: const [
                              Text('Delete'),
                              Text('Delete the notification permanently.')
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ));
        });
  }
}
