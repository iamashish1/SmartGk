import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:smartgk/constants/widget_constants.dart';
import 'package:smartgk/global_widgets/buttons/container/border_container.dart';
import 'package:smartgk/global_widgets/heading/sectionHeading.dart';
import 'package:smartgk/global_widgets/helper_widget/black_space.dart';
import 'package:smartgk/global_widgets/scaffold/primary_scaffold.dart';
import 'package:smartgk/modules/category_and_courses/widgets/exams/exam_general_container.dart';

import '../../model/question_model.dart';

class StartTest extends StatefulWidget {
  final Color? color;
  const StartTest({Key? key, this.color}) : super(key: key);

  @override
  State<StartTest> createState() => _StartTestState();
}

class _StartTestState extends State<StartTest> {
  List<QuestionModel> list = [
    QuestionModel(
        marks: 1,
        num: 1,
        question:
            "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Magna purus porttitor scelerisque viverra proin diam egestas posuere. Cras porttitor facilisi sed quis consectetur gravida nulla placerat. Cras quis et?"),
    QuestionModel(
        marks: 1,
        num: 1,
        question:
            "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Magna purus porttitor scelerisque viverra proin diam egestas posuere. Cras porttitor facilisi sed quis consectetur gravida nulla placerat. Cras quis et?")
  ];

  List listAsw = [
    "Hendrerit rhoncus etiam tristique.",
    'Sem s at f gravida gf a.',
    'g risus at h gravida d a.',
    'Sem risus at eget y egestas a.',
  ];
  String currentValue = '';
  int val = -1;
  bool isResult = false;
  @override
  Widget build(BuildContext context) {
    return PrimaryScaffold(
      appBarTitle: isResult ? 'Results' : '',
      child: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            VerticalSpace(10.h),
            ExamGeneralContainer(
                examHeading: "Bibendum sit rutrum felis ac uta massa Exam",
                info: isResult
                    ? {
                        "Total Marks": "20 Marks",
                        "Marks Attained": "20 Marks",
                        "Percentage": "20%"
                      }
                    : {"Marks": "20 Marks"}),
            VerticalSpace(15.h),
            GestureDetector(
              onTap: () {
                setState(() {
                  isResult = !isResult;
                });
              },
              child: Visibility(
                visible: isResult,
                child: BorderContainer(
                    child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Text(
                          'TImer Remaining:',
                          style:
                              Theme.of(context).textTheme.bodyText1?.copyWith(
                                    fontWeight: FontWeight.w500,
                                  ),
                        ),
                        HorizSpace(5.w),
                        Text(
                          '70 Mins 15 Secs',
                          style:
                              Theme.of(context).textTheme.bodyText1?.copyWith(
                                    fontWeight: FontWeight.w400,
                                  ),
                        )
                      ],
                    ),
                    Text('Question Completed:'),
                    VerticalSpace(10.h),
                    Wrap(
                      runSpacing: 5,
                      spacing: 5,
                      children: [
                        HorizSpace(5.w),
                        ...[
                          1,
                          2,
                          3,
                          4,
                          5,
                          6,
                          7,
                          8,
                          9,
                          32,
                          12,
                          7,
                          9,
                          5,
                          6,
                          7
                        ].map((e) => Container(
                              height: 20,
                              width: 20,
                              decoration: BoxDecoration(
                                  border:
                                      Border.all(width: 1, color: Colors.grey),
                                  color: e < 5 ? Colors.green : null,
                                  borderRadius: BorderRadius.circular(4)),
                              child: Center(
                                  child: Text(
                                e.toString(),
                                style: TextStyle(
                                    color: e < 5 ? Colors.white : Colors.black),
                              )),
                            ))
                      ],
                    ),
                  ],
                )),
              ),
            ),
            ListView.separated(
                primary: false,
                itemCount: list.length,
                shrinkWrap: true,
                separatorBuilder: (ctx, ind) => VerticalSpace(15.h),
                itemBuilder: ((context, index) {
                  return Column(
                    children: [
                      Padding(
                        padding: defaultPadding,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            SectionHeading(
                                horizPading: 0,
                                title: "Question" +
                                    ' ' +
                                    list[index].num.toString()),
                            Text(
                              list[index].marks.toString() + ' ' + "Marks",
                              style: Theme.of(context)
                                  .textTheme
                                  .headline2
                                  ?.copyWith(
                                      fontSize: 14,
                                      fontWeight: FontWeight.bold),
                            )
                          ],
                        ),
                      ),
                      VerticalSpace(10.h),
                      Padding(
                        padding: defaultPadding,
                        child: Text(
                          list[index].question,
                          style: Theme.of(context).textTheme.bodyText1,
                        ),
                      ),
                      ...listAsw.map(
                        (e) => Padding(
                          padding: defaultPadding,
                          child: Card(
                            color: widget.color,
                            elevation: 5,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8.0),
                            ),
                            child: ListTile(
                                contentPadding: EdgeInsets.zero,
                                title: Text(
                                  e,
                                  style: Theme.of(context)
                                      .textTheme
                                      .bodyText1
                                      ?.copyWith(
                                          fontSize: 14,
                                          fontWeight: FontWeight.w400),
                                ),
                                leading: Radio<dynamic>(
                                  activeColor: Colors.green,
                                  groupValue: e,
                                  onChanged: (value) {
                                    setState(() {
                                      currentValue = value;
                                    });
                                  },
                                  value: e,
                                )),
                          ),
                        ),
                      )
                    ],
                  );
                }))
          ],
        ),
      ),
    );
  }
}
