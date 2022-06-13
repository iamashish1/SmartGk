import 'package:auto_route/auto_route.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:smartgk/app/smart_gk_router.gr.dart';
import 'package:smartgk/constants/widget_constants.dart';
import 'package:smartgk/global_widgets/helper_widget/black_space.dart';
import 'package:smartgk/global_widgets/scaffold/primary_scaffold.dart';
import 'package:smartgk/modules/category_and_courses/widgets/course_container.dart';
import 'package:smartgk/modules/category_and_courses/widgets/exams/course_exams_container.dart';
import 'package:smartgk/modules/category_and_courses/widgets/exams/exam_general_container.dart';

class ExamScreen extends StatelessWidget {
  const ExamScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return PrimaryScaffold(
      appBarTitle: 'Exams',
      child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          primary: true,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              VerticalSpace(15.h),
              Padding(
                padding: defaultPadding,
                child: Text(
                  "Upcoming Exams",
                  textAlign: TextAlign.justify,
                  style: theme.textTheme.headline2?.copyWith(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              VerticalSpace(10.h),
              ExamGeneralContainer(
                  onPress: () =>
                      context.router.push(const ExamInstructionScreen()),
                  examHeading: 'Bibendum sit rutrum felis ac uta massa Exam',
                  info: {
                    'Date': "2019/2/6",
                    'Time ': "2 PM",
                    'Topics Covered': 'Irlam Phisrl Ipusm Marks'
                  }),
              VerticalSpace(15.h),
              Padding(
                padding: defaultPadding,
                child: Text(
                  "Exams for this Course",
                  textAlign: TextAlign.justify,
                  style: theme.textTheme.headline2?.copyWith(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              VerticalSpace(10.h),
              ListView.separated(
                primary: false,
                shrinkWrap: true,
                itemBuilder: ((context, index) => CourseExams(
                      examTaken: index < 2 ? true : false,
                    )),
                separatorBuilder: (ctx, ind) => VerticalSpace(10.h),
                itemCount: 7,
              )
            ],
          )),
    );
  }
}
