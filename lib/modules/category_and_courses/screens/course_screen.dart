import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:smartgk/constants/assets_constants.dart';
import 'package:smartgk/global_widgets/helper_widget/black_space.dart';

class CourseScreen extends StatelessWidget {
  const CourseScreen({Key? key}) : super(key: key);

  @override
  // Widget build(BuildContext context) {
  //   return Scaffold(
  //     body: SingleChildScrollView(
  //       child: Column(
  //         children: [
  //           Stack(
  //             children: [
  //               Image.asset(
  //                 AssetsConstants.girl,
  //                 width: 390.w,
  //                 height: 160.h,
  //                 fit: BoxFit.cover,
  //               ),
  //               Positioned(
  //                 top: 21.h,
  //                 left: 20.w,
  //                 child: SvgPicture.asset(
  //                   AssetsConstants.backIconSvg,
  //                   color: Colors.white,
  //                 ),
  //               )
  //             ],
  //           )
  //         ],
  //       ),
  //     ),
  //   );
  Widget build(BuildContext context) {
    return Scaffold(
      body: NestedScrollView(
        headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
          return <Widget>[
            SliverAppBar(
              leading: const Icon(
                Icons.arrow_back,
                size: 30,
              ),
              expandedHeight: 160.h,
              floating: false,
              stretch: true,
              flexibleSpace: FlexibleSpaceBar(
                  centerTitle: true,
                  background: Image.asset(
                    AssetsConstants.girl,
                    fit: BoxFit.cover,
                  )),
            ),
          ];
        },
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Bibendum sit rutrum felis ac ut massa."),
            VerticalSpace(10.h),
            Text(
                "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris leo pellentesque sed elit ridiculus felis condimentum sed sit. Vel pellentesque sit mauris libero. Nunc amet adipiscing eu mauris luctus id feugiat placerat. Nunc nec, tempor at mauris, pharetra quis scelerisque eros, in. Tortor platea sed semper viverra auctor"),
            Row(
              children: [
                Text('Created on:'),
                Text('20 january 2021'),
              ],
            ),
            Row(
              children: [Text('Rating:'), Text('4.7'), Icon(Icons.star)],
            ),
            Text('Teacher:'),
            Container(
              height: 75.h,
              width: 330.w,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(
                    width: 1,
                    color: Theme.of(context).colorScheme.primary,
                  )),
            )
          ],
        ),
      ),
    );
  }
}
