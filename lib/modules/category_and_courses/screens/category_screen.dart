import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:smartgk/constants/assets_constants.dart';
import 'package:smartgk/constants/widget_constants.dart';
import 'package:smartgk/global_widgets/helper_widget/black_space.dart';
import 'package:smartgk/global_widgets/scaffold/primary_scaffold.dart';

import '../../../app/smart_gk_router.gr.dart';
import '../widgets/course_container.dart';

class CategoryScreen extends StatelessWidget {
  const CategoryScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return PrimaryScaffold(
      appBarTitle: 'Category Name',
      child: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Padding(
          padding: defaultPadding.copyWith(
            bottom: 20,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              VerticalSpace(20.h),
              Text(
                'Featured Courses',
                style: theme.textTheme.headline2
                    ?.copyWith(fontSize: 20, fontWeight: FontWeight.w500),
              ),
              VerticalSpace(10.h),
              Align(
                alignment: Alignment.center,
                child: Container(
                  padding: const EdgeInsets.all(10),
                  height: 182.h,
                  width: 340.w,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      border: Border.all(
                        width: 1,
                        color: theme.colorScheme.primary,
                      )),
                  child: Column(
                    children: [
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Text(
                                'Course Name',
                                style: theme.textTheme.bodyText1
                                    ?.copyWith(fontWeight: FontWeight.w600),
                              ),
                              VerticalSpace(7.h),
                              Container(
                                width: 127.w,
                                height: 120.h,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    image: DecorationImage(
                                      image: AssetImage(AssetsConstants.girl),
                                      fit: BoxFit.cover,
                                    )),
                              )
                            ],
                          ),
                          HorizSpace(12.w),
                          //Desc Column starts

                          Column(
                            mainAxisSize: MainAxisSize.min,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(
                                height: 62.h,
                                width: 180.w,
                                child: Text(
                                  'Lorem ipsum dolor sit amet, consectetur adipiscing elit ut aliquam, purus sit amet ',
                                  style: theme.textTheme.bodyText2
                                      ?.copyWith(fontSize: 12),
                                ),
                              ),
                              VerticalSpace(5.h),
                              Text(
                                'Course By Teacher Name',
                                style: theme.textTheme.bodyText2?.copyWith(
                                    fontSize: 12, color: Colors.black),
                              ),
                              VerticalSpace(5.h),
                              Text(
                                'Rs.5,0000',
                                style: theme.textTheme.bodyText1?.copyWith(
                                    color: theme.colorScheme.primary),
                              ),
                            ],
                          )
                        ],
                      ),
                      VerticalSpace(5.h),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          ...['', '1', '', ''].map(
                            (e) => e != '1'
                                ? Padding(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 2.0),
                                    child: Container(
                                      height: 6.h,
                                      width: 6.h,
                                      decoration: BoxDecoration(
                                          color: theme.colorScheme.primary
                                              .withOpacity(0.6),
                                          shape: BoxShape.circle),
                                    ),
                                  )
                                : Container(
                                    decoration: BoxDecoration(
                                        shape: BoxShape.circle,
                                        border: Border.all(
                                            width: 1,
                                            color: theme.colorScheme.primary)),
                                    height: 10.h,
                                    width: 10.h,
                                    child: Center(
                                      child: Container(
                                        height: 5.h,
                                        width: 5.h,
                                        decoration: BoxDecoration(
                                            color: theme.colorScheme.primary
                                                .withOpacity(0.6),
                                            shape: BoxShape.circle),
                                      ),
                                    ),
                                  ),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ),
              VerticalSpace(10.h),
              Text(
                'All Courses',
                style: theme.textTheme.headline2
                    ?.copyWith(fontSize: 20, fontWeight: FontWeight.w500),
              ),
              VerticalSpace(10.h),
              Row(
                children: [
                  SizedBox(
                      height: 35.h,
                      width: 241.w,
                      child: Card(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15.0),
                        ),
                        elevation: 5,
                        child: TextField(
                          decoration: InputDecoration(
                              hintText: 'Search for courses',
                              isDense: true,
                              contentPadding: EdgeInsets.all(6),
                              border: InputBorder.none,
                              prefixIcon: Icon(Icons.search)),
                        ),
                      )),
                  HorizSpace(28.w),
                  Container(
                    height: 30.h,
                    width: 71.w,
                    decoration: BoxDecoration(
                        color: theme.colorScheme.primary,
                        borderRadius: BorderRadius.circular(10)),
                    child: Center(
                        child: Text(
                      'Filters',
                      style: theme.textTheme.bodyText2
                          ?.copyWith(color: Colors.white, fontSize: 14),
                    )),
                  )
                ],
              ),
              VerticalSpace(18.h),
              ListView.separated(
                  primary: false,
                  shrinkWrap: true,
                  itemBuilder: (context, index) {
                    return const CourseContainer();
                  },
                  separatorBuilder: (co, i) => VerticalSpace(10.h),
                  itemCount: 4),
            ],
          ),
        ),
      ),
    );
  }
}
