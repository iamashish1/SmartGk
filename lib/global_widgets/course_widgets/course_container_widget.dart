import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../constants/assets_constants.dart';
import '../helper_widget/black_space.dart';

class CourseContainerWidget extends StatelessWidget {
  final String price;
  final String courseName;
  final String categoryName;
  final String tutor;
  final double rating;
  const CourseContainerWidget({
    Key? key,
    required this.price,
    required this.courseName,
    required this.tutor,
    required this.rating,
    required this.categoryName,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return SizedBox(
      height: 232.h,
      width: 194.w,
      child: Stack(
        clipBehavior: Clip.none,
        children: [
          Positioned(
            top: 95.h,
            child: Container(
              height: 232.h - 90.h,
              width: 194.w,
              decoration: BoxDecoration(
                border: Border.all(width: 2, color: theme.colorScheme.primary),
                borderRadius: const BorderRadius.only(
                    bottomLeft: Radius.circular(10),
                    bottomRight: Radius.circular(10)),
              ),
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 8.0, vertical: 8),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Course Name $courseName',
                      style: theme.textTheme.bodyText1?.copyWith(
                        fontWeight: FontWeight.w600,
                        fontSize: 14,
                      ),
                    ),
                    VerticalSpace(5.h),
                    RichText(
                      text: TextSpan(
                          text: 'Instructor : ',
                          style: theme.textTheme.bodyText1?.copyWith(
                            fontWeight: FontWeight.w600,
                            fontSize: 13,
                          ),
                          children: <TextSpan>[
                            TextSpan(
                              text: tutor,
                              style: theme.textTheme.bodyText1?.copyWith(
                                fontSize: 12,
                              ),
                            ),
                          ]),
                    ),
                    Row(
                      children: [
                        Text(
                          'Rating:',
                          style: theme.textTheme.bodyText1?.copyWith(
                            fontWeight: FontWeight.w600,
                            fontSize: 12,
                          ),
                        ),
                        HorizSpace(5.w),
                        Text(
                          rating.toString(),
                          style: theme.textTheme.bodyText1?.copyWith(
                            fontSize: 12,
                          ),
                        ),
                        const Icon(
                          Icons.star,
                        )
                      ],
                    ),
                    VerticalSpace(6.h),
                    Text(
                      price,
                      style: theme.textTheme.headline2?.copyWith(
                        color: theme.colorScheme.primary,
                        fontWeight: FontWeight.bold,
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
          ClipRRect(
            borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(10), topRight: Radius.circular(10)),
            child: Stack(
              children: [
                Container(
                  height: 102.h,
                  width: 194.w,
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage(AssetsConstants.girl),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Positioned(
                  top: -1,
                  left: -9,
                  child: Container(
                    color: theme.colorScheme.primary,
                    height: 25.h,
                    width: 112.w,
                    child: Center(
                      child: Padding(
                        padding: const EdgeInsets.only(left: 8.0),
                        child: Text(
                          categoryName,
                          style: theme.textTheme.bodyText2?.copyWith(
                            fontSize: 12,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
