import 'package:flutter/material.dart';

import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:smartgk/constants/assets_constants.dart';

class PrimaryScaffold extends StatelessWidget {
  final Widget child;
  const PrimaryScaffold({required this.child, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Scaffold(
      backgroundColor: theme.colorScheme.onSecondary,
      appBar: CardWidget(
        child: SizedBox(
            height: 80.h,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Smart GK',
                    style: theme.textTheme.headline2?.copyWith(
                      fontSize: 24,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  SvgPicture.asset(
                    AssetsConstants.bellIconSvg,
                  ),
                ],
              ),
            )),
      ),
      body: child,
    );
  }
}

class CardWidget extends StatelessWidget with PreferredSizeWidget {
  final Color? color;
  final Widget child;
  CardWidget({Key? key, required this.child, this.color}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      clipBehavior: Clip.hardEdge,
      shadowColor: color,
      margin: const EdgeInsets.only(bottom: 8),
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.zero,
      ),
      elevation: 2,
      borderOnForeground: false,
      child: child,
    );
  }

  @override
  Size get preferredSize => Size(double.infinity, 80.h);
}