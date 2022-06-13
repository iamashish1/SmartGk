import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../constants/widget_constants.dart';
import '../../../../global_widgets/container/border_container.dart';
import '../../../../global_widgets/helper_widget/black_space.dart';

class ExamGeneralContainer extends StatelessWidget {
  final String? examHeading;
  final VoidCallback? onPress;
  final Map info;
  final bool? inRow;

  const ExamGeneralContainer({
    Key? key,
    required this.examHeading,
    required this.info,
    this.inRow,
    this.onPress,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return InkWell(
      onTap: onPress,
      child: BorderContainer(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Bibendum sit rutrum felis ac uta massa Exam",
              textAlign: TextAlign.justify,
              style: theme.textTheme.headline2?.copyWith(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            VerticalSpace(15.h),
            ...info.entries.map((entry) {
              return Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  inRow != null && inRow == true
                      ? Wrap(
                          children: [
                            Text(
                              entry.key + ': ',
                              style: theme.textTheme.bodyText1
                                  ?.copyWith(fontWeight: FontWeight.w500),
                            ),
                            Text(entry.value,
                                style: theme.textTheme.bodyText1
                                    ?.copyWith(fontWeight: FontWeight.w400))
                          ],
                        )
                      : Row(
                          children: [
                            Text(
                              entry.key + ': ',
                              style: theme.textTheme.bodyText1
                                  ?.copyWith(fontWeight: FontWeight.w500),
                            ),
                            Text(entry.value,
                                style: theme.textTheme.bodyText1
                                    ?.copyWith(fontWeight: FontWeight.w400))
                          ],
                        ),
                  VerticalSpace(10.h),
                ],
              );
            }).toList(),
          ],
        ),
      ),
    );
  }
}
