import 'package:auto_route/auto_route.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:smartgk/global_widgets/helper_widget/black_space.dart';
import 'package:smartgk/global_widgets/scaffold/primary_scaffold.dart';

import '../../../app/smart_gk_router.gr.dart';
import '../../../constants/assets_constants.dart';
import '../../../global_widgets/container/icon_label_container.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Scaffold(
      backgroundColor: theme.colorScheme.onSecondary,
      body: Column(
        children: [
          VerticalSpace(29),
          Align(
            alignment: Alignment.topCenter,
            child: CircleAvatar(
              radius: 65.h,
              backgroundImage: AssetImage(AssetsConstants.girl),
            ),
          ),
          VerticalSpace(12.h),
          Text(
            'Wade Warden',
            style: theme.textTheme.headline1
                ?.copyWith(fontSize: 24, fontWeight: FontWeight.bold),
          ),
          VerticalSpace(25.h),
          IconLabelContainer(
            icon: Icons.shopping_bag_outlined,
            label: 'Purchased Courses',
          ),
          VerticalSpace(15.h),
          const IconLabelContainer(
            icon: Icons.book_rounded,
            label: 'Purchased Books',
          ),
          VerticalSpace(15.h),
          IconLabelContainer(
            onPress: () => context.router.push(
              PurchasedCourseScreen(),
            ),
            icon: Icons.bookmark_border,
            label: 'Saved Courses',
          ),
          VerticalSpace(45.h),
          IconLabelContainer(
            onPress: () => context.router.push(SettingsScreen()),
            icon: Icons.settings_outlined,
            label: 'Account Settings',
          ),
          VerticalSpace(15.h),
          IconLabelContainer(
            textStyle: theme.textTheme.bodyText1?.copyWith(color: Colors.red),
            icon: Icons.logout_outlined,
            label: 'Log Out',
            iconColor: Colors.red,
          ),
        ],
      ),
    );
  }
}
