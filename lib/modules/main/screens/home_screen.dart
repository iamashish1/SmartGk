import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:smartgk/constants/assets_constants.dart';
import 'package:smartgk/global_widgets/helper_widget/black_space.dart';
import 'package:smartgk/global_widgets/scaffold/primary_scaffold.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return PrimaryScaffold(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Featured Courses',
                  style: theme.textTheme.headline2
                      ?.copyWith(fontSize: 18, fontWeight: FontWeight.w600),
                ),
                Text(
                  'View All',
                  style: theme.textTheme.bodyText1?.copyWith(
                      color: theme.colorScheme.primary,
                      fontWeight: FontWeight.w500),
                ),
              ],
            ),
            VerticalSpace(15.h),
            SizedBox(
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
                        border: Border.all(width: 2, color: Colors.black),
                        borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(10),
                            bottomRight: Radius.circular(10)),
                        color: Colors.blue,
                      ),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 8.0, vertical: 8),
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Course Name Ipsum Dignisium',
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
                                      text: 'Lucas La vitas Tas Sitas',
                                      style:
                                          theme.textTheme.bodyText1?.copyWith(
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
                                  '4.5',
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
                              'Rs. 2000/-',
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
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(10),
                        topRight: Radius.circular(10)),
                    child: Stack(
                      children: [
                        Container(
                          color: Colors.yellow,
                          height: 102.h,
                          width: 194.w,
                        ),
                        Positioned(
                          top: -1,
                          left: -9,
                          child: Container(
                            color: Colors.green,
                            height: 25.h,
                            width: 112.w,
                            child: Center(
                              child: Padding(
                                padding: const EdgeInsets.only(left: 8.0),
                                child: Text(
                                  'Category Name',
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
            ),
          ],
        ),
      ),
    );
  }
}

// class MyWidget extends StatelessWidget {
//   const MyWidget({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return ClipRRect(
//       borderRadius: const BorderRadius.only(
//         topLeft: Radius.circular(10),
//         topRight: Radius.circular(10),
//         bottomLeft: Radius.circular(10),
//         bottomRight: Radius.circular(10),
//       ),
//       child: Container(
//         color: Colors.blue,
//         height: 232.h,
//         width: 194.w,
//         child: Stack(children: [
//           Container(
//             decoration: const BoxDecoration(
//               color: Colors.yellow,
//               // image: DecorationImage(
//               //   image: AssetImage(AssetsConstants.girl),
//               //   fit: BoxFit.cover,
//               // ),
//             ),
//             height: 102.h,
//             width: 194.w,
//           ),
//           Positioned(
//             top: 112.h,
//             child: Container(
//               height: 232.h - 102.h,
//               decoration: BoxDecoration(
//                 color: Colors.red,
//                 border: Border.all(
//                   color: Colors.green,
//                   width: 2,
//                 ),
//                 borderRadius: BorderRadius.circular(10),
//               ),
//             ),
//           ),
//           Positioned(
//               top: -1,
//               left: -8,
//               child: Container(
//                 width: 112,
//                 height: 25,
//                 decoration: BoxDecoration(
//                   color: theme.colorScheme.primary,
//                   borderRadius: BorderRadius.circular(4),
//                 ),
//                 child: Center(
//                   child: Padding(
//                     padding: const EdgeInsets.only(left: 8.0),
//                     child: Text(
//                       'Category Name',
//                       style: theme.textTheme.bodyText2
//                           ?.copyWith(fontSize: 12, color: Colors.white),
//                     ),
//                   ),
//                 ),
//               ))
//         ]),
//       ),
//     );
//   }
// }
