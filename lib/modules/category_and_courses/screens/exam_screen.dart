import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:smartgk/global_widgets/buttons/container/border_container.dart';
import 'package:smartgk/global_widgets/helper_widget/black_space.dart';
import 'package:smartgk/global_widgets/scaffold/primary_scaffold.dart';

class ExamScreen extends StatelessWidget {
  const ExamScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return PrimaryScaffold(
      appBarTitle: 'Exam',
      child: SingleChildScrollView(
          child: Column(
        children: [
          BorderContainer(
            height: 167.h,
            width: 340.w,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Bibendum sit rutrum felis ac uta massa Exam",
                    textAlign: TextAlign.justify,
                    style: theme.textTheme.headline2?.copyWith(fontSize: 18)),
                VerticalSpace(5.h),
                RichText(
                    text: TextSpan(children: [
                  TextSpan(text: 'Date: ', style: theme.textTheme.bodyText1),
                  TextSpan(
                      text: '2019/11/14',
                      style: theme.textTheme.bodyText1
                          ?.copyWith(fontWeight: FontWeight.w400)),
                ])),
                VerticalSpace(5.h),
                RichText(
                    text: TextSpan(children: [
                  TextSpan(text: 'Time: ', style: theme.textTheme.bodyText1),
                  TextSpan(
                      text: '1:00 PM',
                      style: theme.textTheme.bodyText1
                          ?.copyWith(fontWeight: FontWeight.w400)),
                ])),
                VerticalSpace(5.h),
                RichText(
                    text: TextSpan(children: [
                  TextSpan(
                      text: 'Topic Covered: ',
                      style: theme.textTheme.bodyText1),
                  TextSpan(
                      text: '1 Lorem, Ipsum, Bibendum',
                      style: theme.textTheme.bodyText1
                          ?.copyWith(fontWeight: FontWeight.w400)),
                ]))
              ],
            ),
          )
        ],
      )),
    );
  }
}
