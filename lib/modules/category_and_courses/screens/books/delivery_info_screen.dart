import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:smartgk/constants/widget_constants.dart';
import 'package:smartgk/global_widgets/buttons/primary_button.dart';
import 'package:smartgk/global_widgets/helper_widget/black_space.dart';
import 'package:smartgk/global_widgets/scaffold/primary_scaffold.dart';
import 'package:smartgk/global_widgets/textfield/primary_text_field.dart';

import '../../../../global_widgets/container/shadow_container.dart';

class DeliveryInfoScreen extends StatelessWidget {
  const DeliveryInfoScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return PrimaryScaffold(
      appBarTitle: 'Books',
      child: SingleChildScrollView(
        child: ShadowContainer(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 10),
                child: Text('Contact Information',
                    style: theme.textTheme.bodyText1),
              ),
              VerticalSpace(10.h),
              PrimaryTextField(
                padding: EdgeInsets.symmetric(horizontal: 15),
                labelStyle: theme.textTheme.bodyText1?.copyWith(
                  fontSize: 12,
                ),
                hintText: "Enter Phone Number  ",
                label: 'Contact Number',
                hasBorder: true,
                color: Color(0xffF7FFED),
              ),
              VerticalSpace(15.h),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 10),
                child: Text('Address', style: theme.textTheme.bodyText1),
              ),
              VerticalSpace(10.h),
              PrimaryTextField(
                padding: EdgeInsets.symmetric(horizontal: 15),
                labelStyle: theme.textTheme.bodyText1?.copyWith(
                  fontSize: 12,
                ),
                hintText: "Enter Street Address  ",
                label: 'Street Address 1',
                hasBorder: true,
                color: Color(0xffF7FFED),
              ),
              VerticalSpace(10.h),
              PrimaryTextField(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                labelStyle: theme.textTheme.bodyText1?.copyWith(
                  fontSize: 12,
                ),
                hintText: "Enter Street Address  ",
                label: 'Street Address 2',
                hasBorder: true,
                color: Color(0xffF7FFED),
              ),
              VerticalSpace(10.h),
              PrimaryTextField(
                padding: EdgeInsets.symmetric(horizontal: 15),
                labelStyle: theme.textTheme.bodyText1?.copyWith(
                  fontSize: 12,
                ),
                hintText: "Enter City Name ",
                label: 'City',
                hasBorder: true,
                color: Color(0xffF7FFED),
              ),
              VerticalSpace(10.h),
              PrimaryTextField(
                padding: EdgeInsets.symmetric(horizontal: 15),
                labelStyle: theme.textTheme.bodyText1?.copyWith(
                  fontSize: 12,
                ),
                hintText: 'Choose State',
                label: 'State',
                hasBorder: true,
                color: Color(0xffF7FFED),
              ),
              VerticalSpace(23.h),
              PrimaryButton(
                radius: 5,
                height: 43.h,
                width: 193.w,
                label: 'Enter Information',
              )
            ],
          ),
        ),
      ),
    );
  }
}
