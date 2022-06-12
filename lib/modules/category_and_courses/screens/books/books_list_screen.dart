import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:smartgk/constants/assets_constants.dart';
import 'package:smartgk/global_widgets/buttons/primary_button.dart';
import 'package:smartgk/global_widgets/helper_widget/black_space.dart';
import 'package:smartgk/global_widgets/scaffold/primary_scaffold.dart';
import 'package:smartgk/global_widgets/search_box/primary_search_box.dart';

class BooksListScreen extends StatelessWidget {
  const BooksListScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return PrimaryScaffold(
      child: SingleChildScrollView(
          primary: true,
          child: Column(
            children: [
              VerticalSpace(10.h),
              PrimarySearchBox(
                height: 27.h,
                elevation: 0,
                hasBorder: true,
                placeholder: 'Search Books',
                width: 340.w,
              ),
              VerticalSpace(5.h),
              PrimaryButton(
                radius: 20,
                width: 170.w,
                align: Alignment.centerRight,
                label: '',
                child: Row(
                  children: [
                    Text(
                      'Sort by: Name A-Z',
                      style: theme.textTheme.bodyText2
                          ?.copyWith(fontSize: 14, color: Colors.white),
                    ),
                    Icon(
                      Icons.arrow_drop_down_outlined,
                      size: 18,
                      color: Colors.white,
                    )
                  ],
                ),
              ),
              VerticalSpace(5.h),
              ListView.separated(
                  shrinkWrap: true,
                  itemBuilder: (context, index) {
                    return Container(
                      color: Colors.white,
                      child: Row(
                        children: [
                          Image(
                            image: AssetImage(AssetsConstants.girl),
                            height: 102.h,
                            width: 108.w,
                            fit: BoxFit.cover,
                          ),
                          HorizSpace(5.w),
                          Column(
                            children: [
                              Text('Darrigus dolor massa barios in arcu',
                                  style: theme.textTheme.button
                                      ?.copyWith(fontSize: 16)),
                              Row(
                                children: [
                                  Text('Author:',
                                      style:
                                          theme.textTheme.bodyText1?.copyWith(
                                        fontSize: 14,
                                        fontWeight: FontWeight.bold,
                                      )),
                                  Text('Lucas bis tars SEnd',
                                      style:
                                          theme.textTheme.bodyText1?.copyWith(
                                        fontSize: 14,
                                        fontWeight: FontWeight.w400,
                                      )),
                                ],
                              ),
                              Text(
                                'Rs. 500/-',
                                style: theme.textTheme.button?.copyWith(
                                    color: theme.colorScheme.primary),
                              )
                            ],
                          )
                        ],
                      ),
                    );
                  },
                  separatorBuilder: (ctx, ind) => Divider(
                        endIndent: 10,
                        indent: 10,
                        height: 2,
                      ),
                  itemCount: 8)
            ],
          )),
    );
  }
}
