import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class PrimarySearchBox extends StatelessWidget {
  final String? placeholder;
  final double? height;
  final double? width;
  final bool? hasBorder;
  final double? elevation;
  const PrimarySearchBox(
      {Key? key,
      this.placeholder,
      this.height,
      this.width,
      this.hasBorder,
      this.elevation})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return SizedBox(
        height: height ?? 35.h,
        width: width ?? 241.w,
        child: Card(
          shape: RoundedRectangleBorder(
            side: BorderSide(
                color: hasBorder != null && hasBorder == true
                    ? theme.colorScheme.primary
                    : Colors.white,
                width: 1),
            borderRadius: BorderRadius.circular(15.0),
          ),
          elevation: elevation ?? 5,
          child: TextField(
            decoration: InputDecoration(
                hintText: placeholder ?? 'Search for courses',
                isDense: true,
                contentPadding: const EdgeInsets.all(6),
                border: InputBorder.none,
                prefixIcon: Icon(
                  Icons.search,
                  color: theme.colorScheme.primary,
                )),
          ),
        ));
  }
}
