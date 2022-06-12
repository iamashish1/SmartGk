import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

import '../../constants/widget_constants.dart';

class SectionHeading extends StatelessWidget {
  final String title;
  final double? horizPading;
  final double? fontSize;
  final bool? isNoraml;
  const SectionHeading(
      {Key? key,
      required this.title,
      this.horizPading,
      this.fontSize,
      this.isNoraml})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Padding(
      padding: horizPading != null
          ? EdgeInsets.symmetric(horizontal: horizPading!)
          : defaultPadding,
      child: Text(
        title,
        textAlign: TextAlign.justify,
        style: theme.textTheme.headline2?.copyWith(
          fontSize: fontSize ?? 18,
          fontWeight: isNoraml != null && isNoraml!
              ? FontWeight.normal
              : FontWeight.bold,
        ),
      ),
    );
  }
}
