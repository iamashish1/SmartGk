import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../../../constants/assets_constants.dart';
import '../../../global_widgets/container/border_container.dart';
import '../../../global_widgets/helper_widget/black_space.dart';

class CourseVideoContainer extends StatelessWidget {
  final double? width;
  final double? height;
  const CourseVideoContainer({Key? key, this.width, this.height})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return BorderContainer(
      color: theme.colorScheme.primary.withOpacity(0.2),
      height: height ?? 90.h,
      width: width ?? 351.w,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 8),
        child: Row(children: [
          SizedBox(
            height: 65.h,
            width: 65.h,
            child: Stack(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: Image(
                    image: AssetImage(
                      AssetsConstants.girl,
                    ),
                    height: 65.h,
                    width: 65.h,
                    fit: BoxFit.cover,
                  ),
                ),
                Align(
                  alignment: Alignment.center,
                  child: SvgPicture.asset(
                    AssetsConstants.videoPlayIconSvg,
                  ),
                )
              ],
            ),
          ),
          HorizSpace(15.w),
          Expanded(
            child: Column(
              children: [
                Text(
                  "1.Bibendum sit rutrum felis ac uta",
                  style: theme.textTheme.bodyText1
                      ?.copyWith(fontWeight: FontWeight.bold),
                ),
                Text(
                  "Lorem ipsum dolor sit amet, cons ectetur adipiscing.",
                  style: theme.textTheme.bodyText2?.copyWith(fontSize: 12),
                ),
              ],
            ),
          ),
          HorizSpace(5.w),
          Text(
            '10 mins',
            style: theme.textTheme.bodyText2?.copyWith(
                fontSize: 12, fontWeight: FontWeight.bold, color: Colors.black),
          )
        ]),
      ),
    );
  }
}
