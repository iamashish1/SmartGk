import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CourseContentContainer extends StatelessWidget {
  final double? height;
  final double? width;
  final VoidCallback onPress;
  final IconData icon;
  final String name;
  final String desc;
  const CourseContentContainer(
      {Key? key,
      required this.icon,
      required this.name,
      required this.desc,
      this.height,
      this.width,
      required this.onPress})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return GestureDetector(
      onTap: onPress,
      child: Container(
        alignment: Alignment.center,
        height: height ?? 138.h,
        width: width ?? 170.w,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          border: Border.all(color: theme.colorScheme.primary),
        ),
        child: Column(
          children: [
            Container(
              height: 52.h,
              width: 52.h,
              decoration: BoxDecoration(
                  shape: BoxShape.circle, color: theme.colorScheme.primary),
              child: Center(
                  child: Icon(
                icon,
                color: Colors.white,
              )),
            ),
            Text(
              name,
              textAlign: TextAlign.center,
              style: theme.textTheme.bodyText1
                  ?.copyWith(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            Text(
              desc,
              textAlign: TextAlign.center,
            )
          ],
        ),
      ),
    );
  }
}
