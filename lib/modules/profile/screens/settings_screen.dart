import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:smartgk/global_widgets/container/icon_label_container.dart';
import 'package:smartgk/global_widgets/heading/sectionHeading.dart';
import 'package:smartgk/global_widgets/helper_widget/black_space.dart';
import 'package:smartgk/global_widgets/scaffold/primary_scaffold.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return PrimaryScaffold(
      appBarTitle: 'Settings',
      child: SingleChildScrollView(
          child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          VerticalSpace(20.h),
          const SectionHeading(
            horizPading: 20,
            title: 'Profile Settings',
          ),
          VerticalSpace(10.h),
          const IconLabelContainer(
            icon: Icons.edit,
            label: 'Edit Profile',
          ),
          VerticalSpace(10.h),
          const IconLabelContainer(
            icon: Icons.key_rounded,
            label: 'Change Password',
          ),
          VerticalSpace(20.h),
          const SectionHeading(
            horizPading: 20,
            title: 'Help',
          ),
          VerticalSpace(10.h),
          const IconLabelContainer(
            icon: Icons.terminal_sharp,
            label: 'Terms and Conditions',
          ),
          VerticalSpace(10.h),
          const IconLabelContainer(
            icon: Icons.privacy_tip_outlined,
            label: 'Privacy Policy',
          ),
          VerticalSpace(10.h),
          const IconLabelContainer(
            icon: Icons.help,
            label: 'Contact Us',
          ),
        ],
      )),
    );
  }
}
