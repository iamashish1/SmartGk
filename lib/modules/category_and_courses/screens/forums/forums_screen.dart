import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:smartgk/constants/widget_constants.dart';
import 'package:smartgk/global_widgets/buttons/container/border_container.dart';
import 'package:smartgk/global_widgets/buttons/primary_button.dart';
import 'package:smartgk/global_widgets/heading/sectionHeading.dart';
import 'package:smartgk/global_widgets/helper_widget/black_space.dart';
import 'package:smartgk/global_widgets/scaffold/primary_scaffold.dart';
import 'package:smartgk/global_widgets/search_box/primary_search_box.dart';

import '../../../../global_widgets/textfield/primary_text_field.dart';
import '../../widgets/forum/discussion_widget.dart';

class ForumsScreen extends StatelessWidget {
  const ForumsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return PrimaryScaffold(
      appBarTitle: 'Forums',
      child: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SectionHeading(title: 'Add New Discussion'),
            VerticalSpace(15.h),
            BorderContainer(
              child: Column(
                children: [
                  PrimaryTextField(
                    padding: defaultPadding,
                    hasBorder: true,
                    color: theme.colorScheme.primary.withOpacity(0.1),
                    hintText: 'Write Discussion Title',
                    label: "Discussion Title",
                  ),
                  VerticalSpace(10.h),
                  PrimaryTextField(
                    padding: defaultPadding,
                    hasBorder: true,
                    color: theme.colorScheme.primary.withOpacity(0.1),
                    hintText: 'Write Discussion Body',
                    label: "Write Discusssion  Body",
                  ),
                  VerticalSpace(10.h),
                  PrimaryButton(
                    radius: 8,
                    align: Alignment.centerRight,
                    width: 112.w,
                    height: 29.h,
                    label: '',
                    child: Center(
                        child: Text(
                      'Add Discussion',
                      style: theme.textTheme.bodyText2
                          ?.copyWith(fontSize: 12, color: Colors.white),
                    )),
                  )
                ],
              ),
            ),
            VerticalSpace(15.h),
            SectionHeading(title: 'Saved Discussions'),
            VerticalSpace(5.h),
            DiscussionWidget(),
            VerticalSpace(15.h),
            SectionHeading(title: 'Saved Discussions'),
            VerticalSpace(5.h),
            Align(
              alignment: Alignment.center,
              child: PrimarySearchBox(
                elevation: 0,
                hasBorder: true,
                width: 340.w,
                height: 35.h,
                placeholder: 'Search For Discussion',
              ),
            ),
            VerticalSpace(20),
            ListView.separated(
                primary: false,
                shrinkWrap: true,
                itemBuilder: ((context, index) {
                  return const DiscussionWidget();
                }),
                separatorBuilder: (context, index) => VerticalSpace(10.h),
                itemCount: 7)
          ],
        ),
      ),
    );
  }
}
