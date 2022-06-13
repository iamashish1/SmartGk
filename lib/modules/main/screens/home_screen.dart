import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../../../app/smart_gk_router.gr.dart';
import '../../../constants/assets_constants.dart';
import '../../../global_widgets/course_widgets/course_container_widget.dart';
import '../../../global_widgets/course_widgets/course_heading.dart';
import '../../../global_widgets/helper_widget/black_space.dart';
import '../../../global_widgets/scaffold/primary_scaffold.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return PrimaryScaffold(
      appbarChild: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            'Smart GK',
            style: theme.textTheme.headline2?.copyWith(
              fontSize: 24,
              fontWeight: FontWeight.w500,
            ),
          ),
          InkWell(
            onTap: () {
              context.router.push(const NotificationScreen());
            },
            child: SvgPicture.asset(
              AssetsConstants.bellIconSvg,
            ),
          ),
        ],
      ),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            VerticalSpace(20.h),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.0),
              child: CourseHeading(heading: 'Your Courses'),
            ),
            VerticalSpace(15.h),
            SizedBox(
              height: 238.h,
              child: ListView.separated(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                scrollDirection: Axis.horizontal,
                itemBuilder: ((context, index) => const CourseContainerWidget(
                      courseName: 'Ipsum Dignisium',
                      price: 'Rs. 2000/-',
                      rating: 4.5,
                      tutor: 'Lucas vas vitas sas titas',
                      categoryName: 'Category Name',
                    )),
                separatorBuilder: (context, index) => HorizSpace(10.w),
                itemCount: 3,
              ),
            ),
            VerticalSpace(20.h),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.0),
              child: CourseHeading(heading: 'Featured Courses'),
            ),
            VerticalSpace(15.h),
            SizedBox(
              height: 238.h,
              child: ListView.separated(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                scrollDirection: Axis.horizontal,
                itemBuilder: ((context, index) => const CourseContainerWidget(
                      courseName: 'Ipsum Dignisium',
                      price: 'Rs. 2000/-',
                      rating: 4.5,
                      tutor: 'Lucas vas vitas sas titas',
                      categoryName: 'Category Name',
                    )),
                separatorBuilder: (context, index) => HorizSpace(10.w),
                itemCount: 3,
              ),
            ),
            VerticalSpace(20.h),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.0),
              child: CourseHeading(heading: 'New Courses'),
            ),
            VerticalSpace(15.h),
            SizedBox(
              height: 238.h,
              child: ListView.separated(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                scrollDirection: Axis.horizontal,
                itemBuilder: ((context, index) => const CourseContainerWidget(
                      courseName: 'Ipsum Dignisium',
                      price: 'Rs. 2000/-',
                      rating: 4.5,
                      tutor: 'Lucas vas vitas sas titas',
                      categoryName: 'Category Name',
                    )),
                separatorBuilder: (context, index) => HorizSpace(10.w),
                itemCount: 3,
              ),
            )
          ],
        ),
      ),
    );
  }
}
