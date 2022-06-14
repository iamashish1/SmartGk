import 'package:auto_route/auto_route.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:smartgk/constants/assets_constants.dart';
import 'package:smartgk/constants/widget_constants.dart';
import 'package:smartgk/global_widgets/helper_widget/black_space.dart';
import 'package:smartgk/global_widgets/scaffold/primary_scaffold.dart';
import '../../../../global_widgets/container/border_container.dart';
import '../../../../global_widgets/container/shadow_container.dart';

import '../../../../app/smart_gk_router.gr.dart';

class BookDetailScreen extends StatelessWidget {
  const BookDetailScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return PrimaryScaffold(
      appBarTitle: 'Books',
      child: SingleChildScrollView(
          child: Column(
        children: [
          ShadowContainer(
              margin: defaultPadding.copyWith(
                top: 15.h,
                bottom: 15.h,
              ),
              padding: const EdgeInsets.symmetric(
                vertical: 15,
                horizontal: 10,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Align(
                    alignment: Alignment.center,
                    child: Image.asset(
                      AssetsConstants.girl,
                      height: 264.h,
                      width: 280.w,
                      fit: BoxFit.contain,
                    ),
                  ),
                  VerticalSpace(20.h),
                  Text('Rs. 500/-',
                      style: theme.textTheme.headline2?.copyWith(
                          fontSize: 24,
                          color: theme.colorScheme.primary,
                          fontWeight: FontWeight.bold)),
                  VerticalSpace(10.h),
                  Text('Dignissim dolor massa va rius in arcu',
                      style: theme.textTheme.headline2?.copyWith(
                          fontSize: 22, fontWeight: FontWeight.bold)),
                  VerticalSpace(10.h),
                  Row(
                    children: [
                      Text(
                        'Author:',
                        style: theme.textTheme.button
                            ?.copyWith(color: Colors.black),
                      ),
                      Text('Lucus vitae sed est',
                          style: theme.textTheme.button?.copyWith(
                              fontWeight: FontWeight.normal,
                              color: Colors.black)),
                    ],
                  ),
                  VerticalSpace(10.h),
                  Text(
                      "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Tincidunt scelerisque arcu vitae id. At etiam facilisi tellus leo, aliquet est arcu sit.",
                      style: theme.textTheme.bodyText1),
                  VerticalSpace(10.h),
                ],
              )),
          GestureDetector(
            onTap: () => context.router.push(DeliveryInfoScreen()),
            child: BorderContainer(
              height: 50.h,
              width: 310.w,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Pay Via',
                    style:
                        theme.textTheme.button?.copyWith(color: Colors.black),
                  ),
                  Image.asset(AssetsConstants.eSewaPng),
                ],
              ),
            ),
          ),
          VerticalSpace(10.h),
          BorderContainer(
            height: 50.h,
            width: 310.w,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Pay Via',
                  style: theme.textTheme.button?.copyWith(color: Colors.black),
                ),
                HorizSpace(23.w),
                Image.asset(AssetsConstants.connectIpPng),
              ],
            ),
          ),
        ],
      )),
    );
  }
}
