import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:smartgk/constants/assets_constants.dart';
import 'package:smartgk/constants/widget_constants.dart';
import 'package:smartgk/global_widgets/buttons/container/border_container.dart';
import 'package:smartgk/global_widgets/buttons/primary_button.dart';
import 'package:smartgk/global_widgets/heading/sectionHeading.dart';
import 'package:smartgk/global_widgets/helper_widget/black_space.dart';
import 'package:smartgk/global_widgets/scaffold/primary_scaffold.dart';

import '../../../../app/smart_gk_router.gr.dart';
import '../../widgets/exams/exam_general_container.dart';

class ExamInstructionScreen extends StatelessWidget {
  const ExamInstructionScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return PrimaryScaffold(
        appBarTitle: 'Exams',
        child: SingleChildScrollView(
          child: Column(children: [
            ExamGeneralContainer(
              onPress: () => context.router.push(StartTest()),
              examHeading: 'Biebdiem sit rutrum fells ac uta massa.',
              info: const {
                'Date': "2019/2/6",
                'Time ': "2 PM",
                'Marks': '50 Marks'
              },
            ),
            VerticalSpace(15.h),
            BorderContainer(
              padding: defaultPadding.copyWith(bottom: 10, top: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SectionHeading(
                      horizPading: 0, title: 'Rules and Instruction:'),
                  VerticalSpace(10.h),
                  ...['', '', '', '', '', '', '', '']
                      .map((e) => Column(
                            children: [
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  SvgPicture.asset(
                                    AssetsConstants.diamondIconSvg,
                                  ),
                                  HorizSpace(10),
                                  Expanded(
                                    child: Text(
                                      'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Erat aenean molestie felis ullamcorper tellus ipsum. ',
                                      style: Theme.of(context)
                                          .textTheme
                                          .bodyText1
                                          ?.copyWith(
                                            fontSize: 14,
                                          ),
                                    ),
                                  )
                                ],
                              ),
                              VerticalSpace(5.h)
                            ],
                          ))
                      .toList(),
                ],
              ),
            ),
            VerticalSpace(20.h),
            PrimaryButton(
                width: 123.w,
                height: 41.h,
                color: Color(0xffC4C4C4),
                label: 'Take Exam'),
          ]),
        ));
  }
}
