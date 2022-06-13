import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:smartgk/global_widgets/helper_widget/black_space.dart';

import '../../../../global_widgets/container/border_container.dart';

class DiscussionWidget extends StatelessWidget {
  const DiscussionWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return BorderContainer(
      color: Colors.white,
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        Text(
          'Lorem ipsum dolor sit amet, consectetur',
          style: theme.textTheme.button?.copyWith(color: Colors.black),
        ),
        Row(
          children: [
            Row(
              children: [
                Icon(Icons.bookmark),
                Text('10 Saves',
                    style: theme.textTheme.bodyText2?.copyWith(fontSize: 12))
              ],
            ),
            HorizSpace(40.w),
            Row(
              children: [
                Icon(Icons.bookmark),
                Text('10 Replies',
                    style: theme.textTheme.bodyText2?.copyWith(fontSize: 12))
              ],
            ),
          ],
        ),
        VerticalSpace(10.h),
        RichText(
          text: TextSpan(
            children: [
              TextSpan(
                  text: 'Date:',
                  style: theme.textTheme.bodyText2?.copyWith(fontSize: 14)),
              TextSpan(
                  text: '20/5/2022',
                  style: theme.textTheme.bodyText2?.copyWith(fontSize: 14))
            ],
          ),
        ),
      ]),
    );
  }
}
