import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:smartgk/constants/assets_constants.dart';
import 'package:smartgk/constants/widget_constants.dart';
import 'package:smartgk/global_widgets/bottom_sheet/primary_bottom_sheet.dart';
import 'package:smartgk/global_widgets/buttons/primary_button.dart';
import 'package:smartgk/global_widgets/helper_widget/black_space.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

import '../../../app/smart_gk_router.gr.dart';
import '../../../global_widgets/container/border_container.dart';
import '../widgets/course_content_container_widget.dart';

class CourseScreen extends StatelessWidget {
  const CourseScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final ThemeData theme = Theme.of(context);
    return Scaffold(
      body: NestedScrollView(
        headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
          return <Widget>[
            SliverAppBar(
              leading: const Icon(
                Icons.arrow_back,
                size: 30,
                color: Colors.white,
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
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              VerticalSpace(20.h),
              Text(
                "Bibendum sit rutrum felis ac ut massa.",
                style: theme.textTheme.headline2?.copyWith(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              VerticalSpace(10.h),
              Text(
                "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris leo pellentesque sed elit ridiculus felis condimentum sed sit. Vel pellentesque sit mauris libero. Nunc amet adipiscing eu mauris luctus id feugiat placerat. Nunc nec, tempor at mauris, pharetra quis scelerisque eros, in. Tortor platea sed semper viverra auctor",
                style: theme.textTheme.bodyText2?.copyWith(
                  fontSize: 14,
                  color: Color(0xff676767),
                ),
              ),
              Row(
                children: [ 
                  Text('Created on:',
                      style: theme.textTheme.bodyText1
                          ?.copyWith(fontWeight: FontWeight.w600)),
                  Text('20 january 2021', style: theme.textTheme.bodyText1),
                ],
              ),
              Row(
                children: [Text('Rating:'), Text('4.7'), Icon(Icons.star)],
              ),
              Text('Teacher:'),
              Align(
                alignment: Alignment.topCenter,
                child: Container(
                    height: 75.h,
                    width: 330.w,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(
                          width: 1,
                          color: Theme.of(context).colorScheme.primary,
                        )),
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          CircleAvatar(
                            radius: 27.h,
                            backgroundImage: AssetImage(AssetsConstants.girl),
                          ),
                          HorizSpace(15.w),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Text('Teacher Name'),
                              VerticalSpace(7.h),
                              Text('2 Courses'),
                            ],
                          )
                        ],
                      ),
                    )),
              ),
              const Text(
                'Rs, 5,000',
                textAlign: TextAlign.center,
              ),
              PrimaryButton(
                label: 'Buy Now',
                height: 40.h,
                width: 340.w,
                onPressed: () {
                  PrimaryBottomSheet.showModal(
                    height: 340.h,
                    context: context,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Buy Course'),
                        Text('Lispum Ipsum Jismik Histeh Liosht'),
                        Text('Rs 5,000'),
                        Divider(
                          endIndent: 8,
                          indent: 8,
                          color: theme.colorScheme.primary,
                          height: 1,
                        ),
                        BorderContainer(
                          height: 50.h,
                          width: 310.w,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text('Pay Via'),
                              SvgPicture.asset(AssetsConstants.eSewaSvg),
                            ],
                          ),
                        ),
                        BorderContainer(
                          height: 50.h,
                          width: 310.w,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text('Pay Via'),
                              SvgPicture.asset(AssetsConstants.connectIpsSvg),
                            ],
                          ),
                        )
                      ],
                    ),
                  );
                },
              ),
              const Text('What will you learn?'),
              Row(
                children: const [
                  Icon(Icons.star),
                  Text("Risus quam massa pharetra nulla erat bibendum."),
                ],
              ),
              Row(
                children: const [
                  Icon(Icons.star),
                  Text("Risus quam massa pharetra nulla erat bibendum."),
                ],
              ),
              Row(
                children: const [
                  Icon(Icons.star),
                  Text("Risus quam massa pharetra nulla erat bibendum."),
                ],
              ),
              Row(
                children: const [
                  Icon(Icons.star),
                  Text("Risus quam massa pharetra nulla erat bibendum."),
                ],
              ),
              Row(
                children: const [
                  Icon(Icons.star),
                  Text("Risus quam massa pharetra nulla erat bibendum."),
                ],
              ),
              const Text('What does this course contain?'),
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 20.0,
                ),
                child: Wrap(
                    alignment: WrapAlignment.center,
                    runSpacing: 10,
                    spacing: 10,
                    children: [
                      CourseContentContainer(
                        onPress: () => context.router.push(
                          LiveClass(),
                        ),
                        desc: "Live Class with instructors",
                        icon: Icons.video_call,
                        name: 'Live Class',
                      ),
                      CourseContentContainer(
                        onPress: () => context.router.push(
                          VideoScreen(),
                        ),
                        desc: "Live Class with instructors",
                        icon: Icons.video_call,
                        name: 'Video',
                      ),
                      CourseContentContainer(
                        onPress: () => context.router.push(
                          NotesScreen(),
                        ),
                        desc: "Live Class with instructors",
                        icon: Icons.video_call,
                        name: 'Notes',
                      ),
                      CourseContentContainer(
                        onPress: () => context.router.push(
                          const ExamScreen(),
                        ),
                        desc: "Live Class with instructors",
                        icon: Icons.video_call,
                        name: 'Exams',
                      ),
                      CourseContentContainer(
                        height: 127.h,
                        width: 296.w,
                        onPress: () => context.router.push(
                          ForumsScreen(),
                        ),
                        desc: "Live Class with instructors",
                        icon: Icons.video_call,
                        name: 'Discussion Forum',
                      ),
                    ]),
              ),
              const Text('Rate the course'),
              BorderContainer(
                height: 178.h,
                width: 330.w,
                child: Column(
                  children: [
                    RatingBar.builder(
                      glow: false,
                      initialRating: 0,
                      unratedColor: theme.colorScheme.primary,
                      minRating: 0,
                      direction: Axis.horizontal,
                      itemCount: 5,
                      itemPadding: const EdgeInsets.symmetric(
                        horizontal: 4.0,
                      ),
                      itemBuilder: (context, _) => Icon(
                        Icons.star_border_outlined,
                        color: theme.colorScheme.primary,
                      ),
                      onRatingUpdate: (rating) {},
                    ),
                    Align(
                      alignment: Alignment.center,
                      child: BorderContainer(
                        color: theme.colorScheme.primary.withOpacity(0.2),
                        margin: const EdgeInsets.symmetric(horizontal: 15),
                        height: 76.h,
                        child: TextFormField(
                          maxLines: 10,
                          decoration: const InputDecoration(
                              contentPadding: EdgeInsets.symmetric(
                                  horizontal: 10, vertical: 8),
                              isDense: true,
                              border: InputBorder.none,
                              hintText: 'Write your review'),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              GestureDetector(
                onTap: (() => context.router.push(BooksListScreen())),
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: const Text('Course Review'),
                ),
              ),
              Container(
                margin: defaultPadding,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(color: theme.colorScheme.primary),
                ),
                child: ListView.separated(
                  primary: false,
                  shrinkWrap: true,
                  itemBuilder: (ctx, index) {
                    return Row(
                      children: [
                        CircleAvatar(
                          radius: 27.h,
                          backgroundImage: AssetImage(AssetsConstants.girl),
                        ),
                        HorizSpace(15.w),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text('Lorem Ipsum Name'),
                              Row(
                                children: [
                                  ...['', '', '', '', '']
                                      .map((e) => Icon(Icons.star))
                                      .toList(),
                                ],
                              ),
                              const Text(
                                "Lorem ipsum dolor sit amet, conse ctetur adipiscing elit. Ferme ntum at odio aliquet ante convallis amet convallis. Nunc nibh sed orci viverra platea. Auctor pellentesque amet.",
                              ),
                            ],
                          ),
                        )
                      ],
                    );
                  },
                  separatorBuilder: (context, index) => Divider(
                    indent: 8,
                    endIndent: 8,
                    height: 10,
                    thickness: 1,
                    color: theme.colorScheme.primary,
                  ),
                  itemCount: 3,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
