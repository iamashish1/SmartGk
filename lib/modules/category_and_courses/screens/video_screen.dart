import 'package:auto_route/auto_route.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:smartgk/constants/assets_constants.dart';
import 'package:smartgk/constants/widget_constants.dart';
import 'package:smartgk/global_widgets/buttons/primary_button.dart';
import 'package:smartgk/global_widgets/helper_widget/black_space.dart';
import 'package:smartgk/global_widgets/scaffold/primary_scaffold.dart';
import 'package:smartgk/modules/category_and_courses/widgets/course_video_container.dart';

import '../../../app/smart_gk_router.gr.dart';
import '../../../global_widgets/container/border_container.dart';

class VideoScreen extends StatelessWidget {
  const VideoScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final ThemeData theme = Theme.of(context);
    return PrimaryScaffold(
      appBarTitle: 'Videos',
      child: Column(
        mainAxisSize: MainAxisSize.max,
        children: [
          Align(
            alignment: Alignment.topCenter,
            child: SizedBox(
              width: 350.w,
              height: 140.h + 154.h,
              child: Stack(clipBehavior: Clip.none, children: [
                Positioned(
                  top: 150.h,
                  left: 0,
                  right: 0,
                  child: BorderContainer(
                    padding: EdgeInsets.zero,
                    margin: EdgeInsets.zero,
                    borderRadius: const BorderRadius.only(
                      bottomLeft: Radius.circular(10),
                      bottomRight: Radius.circular(10),
                    ),
                    width: 350.w,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        VerticalSpace(15.h),
                        Padding(
                          padding: defaultPadding,
                          child: Text(
                            'Bielbjsd Sit Huis Jiusd Uta Mussa.',
                            style: theme.textTheme.button
                                ?.copyWith(color: Colors.black),
                          ),
                        ),
                        VerticalSpace(10.h),
                        Padding(
                          padding: defaultPadding,
                          child: Row(
                            children: [
                              SvgPicture.asset(AssetsConstants.timeIconSvg),
                              HorizSpace(8.w),
                              Text('20 Mins',
                                  style: theme.textTheme.bodyText1
                                      ?.copyWith(fontWeight: FontWeight.w400)),
                            ],
                          ),
                        ),
                        VerticalSpace(15.h),
                        PrimaryButton(
                          onPressed: () =>
                              context.router.push(VideoCallingScreen()),
                          height: 40.h,
                          width: 90.w,
                          label: '',
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              SvgPicture.asset(AssetsConstants.playIconSvg),
                              HorizSpace(5.w),
                              Text('Play',
                                  style: theme.textTheme.button?.copyWith(
                                      color: Colors.white,
                                      fontWeight: FontWeight.w500)),
                            ],
                          ),
                        ),
                        VerticalSpace(10.h),
                      ],
                    ),
                  ),
                ),
                Positioned(
                  top: 0,
                  left: 0,
                  right: 0,
                  child: ClipRRect(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(10),
                      topRight: Radius.circular(10),
                    ),
                    child: Image.asset(
                      AssetsConstants.girl,
                      width: 350.w,
                      height: 154.h,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ]),
            ),
          ),
          VerticalSpace(15.h),
          Text(
            'All Videos',
            style: theme.textTheme.button?.copyWith(
              color: Colors.black,
            ),
          ),
          VerticalSpace(10.h),
          SizedBox(
              height: 35.h,
              width: 340.w,
              child: Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15.0),
                ),
                elevation: 5,
                child: TextField(
                  decoration: InputDecoration(
                      hintText: 'Search videos',
                      isDense: true,
                      contentPadding: EdgeInsets.all(6),
                      border: InputBorder.none,
                      prefixIcon: Icon(Icons.search)),
                ),
              )),
          VerticalSpace(10.h),
          Expanded(
            child: ListView.separated(
              primary: false,
              itemBuilder: (context, index) =>
                  index == 6 ? VerticalSpace(10.h) : CourseVideoContainer(),
              separatorBuilder: (context, index) {
                return VerticalSpace(10.h);
              },
              itemCount: 7,
            ),
          )
        ],
      ),
    );
  }
}
