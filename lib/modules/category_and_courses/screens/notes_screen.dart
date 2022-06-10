import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:smartgk/constants/widget_constants.dart';
import 'package:smartgk/global_widgets/helper_widget/black_space.dart';
import 'package:smartgk/global_widgets/scaffold/primary_scaffold.dart';
import 'package:smartgk/global_widgets/search_box/primary_search_box.dart';

class NotesScreen extends StatelessWidget {
  const NotesScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return PrimaryScaffold(
        appBarTitle: 'Notes',
        child: SingleChildScrollView(
          child: Column(
            children: [
              VerticalSpace(10.h),
              PrimarySearchBox(
                width: 330.w,
                placeholder: 'Search Notes',
              ),
              VerticalSpace(15.h),
              Container(
                color: Colors.white,
                padding: EdgeInsets.symmetric(
                  horizontal: 30.w,
                  vertical: 10.h,
                ),
                child: ListView.separated(
                    primary: false,
                    shrinkWrap: true,
                    itemBuilder: (context, index) {
                      return Row(
                        children: [
                          Icon(
                            Icons.picture_as_pdf,
                            size: 22,
                            color: Colors.grey,
                          ),
                          HorizSpace(9.w),
                          Text("Vitae amet ullamcorper Topic 4",
                              style: theme.textTheme.bodyText1)
                        ],
                      );
                    },
                    separatorBuilder: (context, index) => Divider(
                          endIndent: 8,
                          indent: 8,
                          height: 20.h,
                          color: theme.colorScheme.primary,
                        ),
                    itemCount: 7),
              ),
            ],
          ),
        ));
  }
}
