import 'package:flutter/cupertino.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:smartgk/constants/widget_constants.dart';
import 'package:smartgk/global_widgets/helper_widget/black_space.dart';
import 'package:smartgk/global_widgets/scaffold/primary_scaffold.dart';

import '../../category_and_courses/widgets/course_container.dart';

class PurchasedCourseScreen extends StatelessWidget {
  const PurchasedCourseScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return PrimaryScaffold(
      appBarTitle: 'Saved Course',
      child: ListView.separated(
        itemBuilder: ((context, index) => const CourseContainer(
              margin: defaultPadding,
              height: null,
              width: null,
            )),
        separatorBuilder: (context, index) => VerticalSpace(15.h),
        itemCount: 3,
      ),
    );
  }
}
