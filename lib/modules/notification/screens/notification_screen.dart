import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:smartgk/constants/assets_constants.dart';
import 'package:smartgk/global_widgets/helper_widget/black_space.dart';

import 'package:smartgk/global_widgets/scaffold/primary_scaffold.dart';

import '../widgets/notification_bottom_sheet.dart';

class NotificationScreen extends StatelessWidget {
  const NotificationScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return PrimaryScaffold(
      appbarChild: Row(
        children: [
          InkWell(
              onTap: () => Navigator.pop(context),
              child: SvgPicture.asset(AssetsConstants.backIconSvg)),
          const Spacer(),
          Text(
            'Notification',
            style: theme.textTheme.headline2?.copyWith(
              fontSize: 24,
              fontWeight: FontWeight.w500,
            ),
          ),
          const Spacer(),
        ],
      ),
      child: Column(
        children: [
          VerticalSpace(10.h),
          Align(
            alignment: Alignment.centerRight,
            child: InkWell(
              onTap: () {
                CustomBottomSheet.showModal(context);
              },
              child: Padding(
                padding: const EdgeInsets.only(right: 30.0),
                child: Text(
                  'Mark all as Read',
                  style: theme.textTheme.bodyText1?.copyWith(
                    color: theme.colorScheme.primary,
                  ),
                ),
              ),
            ),
          ),
          VerticalSpace(5.h),
          Container(
            color: Colors.white,
            child: ListView.separated(
              padding: EdgeInsets.zero,
              separatorBuilder: ((context, index) => Divider(
                    height: 1,
                    thickness: 1,
                    color: theme.colorScheme.primary,
                  )),
              itemCount: 7,
              shrinkWrap: true,
              itemBuilder: ((context, index) => Container(
                  color: Colors.white,
                  height: 82.h,
                  width: 390.w,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 20.0, vertical: 10),
                    child: Row(
                      children: [
                        Expanded(
                          child: Text(
                            "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Urna proin donec quam lectus.",
                            style: theme.textTheme.bodyText1,
                            textAlign: TextAlign.justify,
                          ),
                        ),
                        HorizSpace(16.w),
                        const Icon(Icons.more_vert),
                      ],
                    ),
                  ))),
            ),
          ),
          Divider(
            height: 1,
            thickness: 1,
            color: theme.colorScheme.primary,
          )
        ],
      ),
    );
  }
}
