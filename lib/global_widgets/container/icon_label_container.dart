import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:smartgk/constants/widget_constants.dart';
import 'package:smartgk/global_widgets/helper_widget/black_space.dart';

import 'border_container.dart';

class IconLabelContainer extends StatelessWidget {
  final IconData? icon;
  final VoidCallback? onPress;
  final String? label;
  final TextStyle? textStyle;
  final Color? iconColor;
  const IconLabelContainer(
      {Key? key,
      this.icon,
      this.label,
      this.textStyle,
      this.iconColor,
      this.onPress})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return GestureDetector(
      onTap: onPress,
      child: BorderContainer(
        width: 350.w,
        height: 50.h,
        margin: defaultPadding,
        padding: defaultPadding.copyWith(top: 10, bottom: 10),
        child: Row(
          children: [
            Icon(
              icon,
              size: 24,
              color: iconColor ?? theme.colorScheme.primary,
            ),
            HorizSpace(20.w),
            Text(
              label ?? '',
              style: textStyle ?? theme.textTheme.bodyText1,
            ),
          ],
        ),
      ),
    );
  }
}
