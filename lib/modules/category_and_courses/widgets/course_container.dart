import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../app/smart_gk_router.gr.dart';
import '../../../constants/assets_constants.dart';
import '../../../global_widgets/helper_widget/black_space.dart';

class CourseContainer extends StatelessWidget {
  final EdgeInsetsGeometry? margin;
  final double? height;
  final double? width;

  const CourseContainer({Key? key, this.margin, this.height, this.width})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return GestureDetector(
      onTap: () => context.router.push(const CourseScreen()),
      child: Container(
        margin: margin ?? EdgeInsets.zero,
        padding: const EdgeInsets.symmetric(horizontal: 11, vertical: 10),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            border: Border.all(color: theme.colorScheme.primary, width: 0.8)),
        height: height,
        width: width,
        child: Row(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Image.asset(
                AssetsConstants.girl,
                height: 88.h,
                width: 88.h,
                fit: BoxFit.cover,
              ),
            ),
            HorizSpace(15.w),
            Expanded(
              child: Column(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Course Name',
                    style: theme.textTheme.bodyText1?.copyWith(
                      fontSize: 18,
                    ),
                    overflow: TextOverflow.ellipsis,
                  ),
                  Text(
                    'Category Name',
                    style: theme.textTheme.bodyText1?.copyWith(
                      fontSize: 14,
                    ),
                    overflow: TextOverflow.ellipsis,
                  ),
                  Text(
                    'Course By: Teacher Name',
                    style: theme.textTheme.bodyText1?.copyWith(
                      fontSize: 14,
                    ),
                    overflow: TextOverflow.ellipsis,
                  ),
                  Row(
                    children: [
                      Text(
                        'Rating:',
                        style: theme.textTheme.bodyText1?.copyWith(
                            fontSize: 14, fontWeight: FontWeight.bold),
                      ),
                      Text(
                        '4.5',
                        style: theme.textTheme.bodyText1?.copyWith(
                            fontSize: 14, fontWeight: FontWeight.normal),
                      ),
                      Icon(Icons.star)
                    ],
                  ),
                  Text(
                    'Rs.2,000',
                    style: theme.textTheme.bodyText1?.copyWith(
                        color: theme.colorScheme.primary,
                        fontWeight: FontWeight.bold),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
