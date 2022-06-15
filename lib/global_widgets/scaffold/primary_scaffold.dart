import 'package:flutter/material.dart';

import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:smartgk/constants/assets_constants.dart';
import 'package:smartgk/constants/widget_constants.dart';
import 'package:smartgk/global_widgets/helper_widget/black_space.dart';

class PrimaryScaffold extends StatelessWidget {
  final String? appBarTitle;
  final Widget? child;
  final bool? hasLeading;
  final Widget? appbarChild;
  const PrimaryScaffold(
      {this.child,
      Key? key,
      this.appbarChild,
      this.appBarTitle,
      this.hasLeading})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Scaffold(
      resizeToAvoidBottomInset: true,
      backgroundColor: theme.colorScheme.onSecondary,
      extendBody: true,
      appBar: CardWidget(
        child: SizedBox(
            height: 80.h,
            child: Padding(
              padding: defaultPadding,
              child: appbarChild ??
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Visibility(
                        visible: hasLeading == null || hasLeading == true,
                        child: ElevatedButton(
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          child: SvgPicture.asset(
                            AssetsConstants.backIconSvg,
                            fit: BoxFit.cover,
                          ),
                          style: ElevatedButton.styleFrom(
                            primary: Colors.white,
                            elevation: 0,
                            shape: const CircleBorder(),
                            padding: const EdgeInsets.all(10),
                          ),
                        ),
                      ),
                      Spacer(
                          flex: hasLeading != null && hasLeading == false
                              ? 5
                              : 3),
                      Text(
                        appBarTitle ?? '',
                        style: theme.textTheme.headline2?.copyWith(
                          fontSize: 24,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      Spacer(
                        flex: 5,
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
// MaterialButton(
                            
//                               materialTapTargetSize:
//                                   MaterialTapTargetSize.shrinkWrap,
//                               padding: EdgeInsets.all(0),
//                               shape: const CircleBorder(),
//                               onPressed: () {
//                                 Navigator.pop(context);
//                               },
//                               child: SvgPicture.asset(
//                                 AssetsConstants.backIconSvg,
//                                 fit: BoxFit.cover,
//                               )),