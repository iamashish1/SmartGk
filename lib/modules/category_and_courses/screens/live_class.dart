import 'package:auto_route/auto_route.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:smartgk/global_widgets/buttons/container/border_container.dart';
import 'package:smartgk/global_widgets/buttons/primary_button.dart';
import 'package:smartgk/global_widgets/helper_widget/black_space.dart';
import 'package:smartgk/global_widgets/scaffold/primary_scaffold.dart';

import '../../../app/smart_gk_router.gr.dart';

class LiveClass extends StatelessWidget {
  const LiveClass({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return PrimaryScaffold(
      appBarTitle: 'Live Class',
      child: SingleChildScrollView(
        child: Column(
          children: [
            VerticalSpace(15.h),
            Text(
              "Scheduled Live Class",
              style: theme.textTheme.button?.copyWith(color: Colors.black),
            ),
            VerticalSpace(10.h),
            BorderContainer(
              padding: EdgeInsets.symmetric(
                horizontal: 15,
                vertical: 8,
              ),
              height: 154.h,
              width: 350.w,
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Biberterim Laioer Hiest Tuish mass gerss.',
                      style:
                          theme.textTheme.button?.copyWith(color: Colors.black),
                    ),
                    VerticalSpace(5.h),
                    Row(
                      children: [
                        Text(
                          "Start Time: ",
                          style: theme.textTheme.bodyText1,
                        ),
                        Text(
                          '1:00 AM',
                          style: theme.textTheme.bodyText2
                              ?.copyWith(color: Colors.black),
                        )
                      ],
                    ),
                    VerticalSpace(5.h),
                    Row(
                      children: [
                        Icon(
                          Icons.punch_clock,
                          size: 20,
                        ),
                        Text(
                          ' 1 hour',
                          style: theme.textTheme.bodyText1
                              ?.copyWith(color: Colors.black),
                        )
                      ],
                    ),
                    VerticalSpace(15.h),
                    PrimaryButton(
                      onPressed: () =>
                          context.router.push(const VideoPlayingScreen()),
                      radius: 5,
                      height: 30.h,
                      width: 100.w,
                      label: 'Join Now',
                      labelStyle: Theme.of(context)
                          .textTheme
                          .bodyText1
                          ?.copyWith(color: Colors.white),
                    )
                  ]),
            ),
          ],
        ),
      ),
    );
  }
}
