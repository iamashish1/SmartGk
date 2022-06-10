import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class PrimarySearchBox extends StatelessWidget {
  final String? placeholder;
  final double? height;
  final double? width;
  const PrimarySearchBox({Key? key, this.placeholder, this.height, this.width})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return SizedBox(
        height: height ?? 35.h,
        width: width ?? 241.w,
        child: Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15.0),
          ),
          elevation: 5,
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
