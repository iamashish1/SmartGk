import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:smartgk/constants/widget_constants.dart';
import 'package:smartgk/global_widgets/helper_widget/black_space.dart';

import '../../../../global_widgets/container/border_container.dart';

class CourseExams extends StatelessWidget {
  final String? courseName;
  final String? date;
  final String? marks;
  final String? time;
  final String? attained;
  final String? duration;
  final bool examTaken;
  const CourseExams(
      {Key? key,
      this.courseName,
      this.date,
      this.marks,
      this.time,
      this.attained,
      this.duration,
      required this.examTaken})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return BorderContainer(
        padding: defaultPadding.copyWith(top: 10, bottom: 10),
        color: examTaken ? theme.colorScheme.primary.withOpacity(0.2) : null,
        height: 144.h,
        width: 338.w,
        child:
            Column(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
          Text(
            'Bibendum sit rutrum felis ac uta massa.',
            textAlign: TextAlign.justify,
            style: theme.textTheme.headline2?.copyWith(
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
          VerticalSpace(5.h),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Text('Date: ', style: theme.textTheme.bodyText1),
                  Text('14/4/2033',
                      style: theme.textTheme.bodyText1
                          ?.copyWith(fontWeight: FontWeight.w400)),
                ],
              ),
              Row(
                children: [
                  Text('Time: ', style: theme.textTheme.bodyText1),
                  Text('5:00 PM',
                      style: theme.textTheme.bodyText1
                          ?.copyWith(fontWeight: FontWeight.w400)),
                ],
              ),
            ],
          ),
          VerticalSpace(5.h),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Text('Marks: ', style: theme.textTheme.bodyText1),
                  Text('50 Marks',
                      style: theme.textTheme.bodyText1
                          ?.copyWith(fontWeight: FontWeight.w400)),
                ],
              ),
              Row(
                children: [
                  examTaken
                      ? Text('Attained: ', style: theme.textTheme.bodyText1)
                      : Padding(
                          padding: EdgeInsets.only(right: 5.w),
                          child: Icon(Icons.history),
                        ),
                  examTaken
                      ? Text('40/50',
                          style: theme.textTheme.bodyText1
                              ?.copyWith(fontWeight: FontWeight.w400))
                      : Text('1 Hour',
                          style: theme.textTheme.bodyText1
                              ?.copyWith(fontWeight: FontWeight.w400))
                ],
              ),
            ],
          ),
          VerticalSpace(10.h),
          Visibility(
            visible: examTaken,
            child: Text('View Results',
                textAlign: TextAlign.center,
                style: theme.textTheme.bodyText1
                    ?.copyWith(color: theme.colorScheme.primary)),
          )
        ]));
  }
}
