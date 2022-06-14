import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:smartgk/constants/assets_constants.dart';
import 'package:smartgk/constants/widget_constants.dart';
import 'package:smartgk/global_widgets/container/border_container.dart';
import 'package:smartgk/global_widgets/helper_widget/black_space.dart';
import 'package:smartgk/global_widgets/scaffold/primary_scaffold.dart';

class VideoCallingScreen extends StatelessWidget {
  const VideoCallingScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Scaffold(
        backgroundColor: theme.colorScheme.onSecondary,
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(children: [
              Image.asset(
                AssetsConstants.girl,
                fit: BoxFit.cover,
                width: 390.w,
                height: 215.h,
              ),
              Positioned(
                  bottom: 10.h,
                  left: 0,
                  right: 0,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SvgPicture.asset(AssetsConstants.videoIcon),
                      SvgPicture.asset(AssetsConstants.videoIcon2),
                      SvgPicture.asset(AssetsConstants.videoIcon1),
                    ],
                  ))
            ]),
            VerticalSpace(10.h),
            Padding(
              padding: defaultPadding,
              child: Text(
                'Bibendum sit rutrum felis ac uta massa.',
                style: theme.textTheme.headline2?.copyWith(
                  fontSize: 20,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
            VerticalSpace(15.h),
            Padding(
              padding: defaultPadding,
              child: Text(
                'Instructor:',
                style: theme.textTheme.bodyText1,
              ),
            ),
            VerticalSpace(4.h),
            BorderContainer(
                child: Row(
              children: [
                CircleAvatar(
                  radius: 27.h,
                  backgroundImage: AssetImage(AssetsConstants.girl),
                ),
                HorizSpace(15.w),
                Text('Teacher Name',
                    style: theme.textTheme.bodyText1
                        ?.copyWith(fontWeight: FontWeight.w600)),
              ],
            ))
          ],
        ));
  }
}
