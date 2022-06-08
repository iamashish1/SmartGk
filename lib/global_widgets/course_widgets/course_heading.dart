import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class CourseHeading extends StatelessWidget {
  final String heading;

  const CourseHeading({Key? key, required this.heading}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          heading,
          style: theme.textTheme.headline2
              ?.copyWith(fontSize: 18, fontWeight: FontWeight.w600),
        ),
        Text(
          'View All',
          style: theme.textTheme.bodyText1?.copyWith(
              color: theme.colorScheme.primary, fontWeight: FontWeight.w500),
        ),
      ],
    );
  }
}
