import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:smartgk/constants/assets_constants.dart';
import 'package:smartgk/constants/widget_constants.dart';
import 'package:smartgk/global_widgets/buttons/primary_button.dart';
import 'package:smartgk/global_widgets/helper_widget/black_space.dart';
import 'package:smartgk/global_widgets/scaffold/primary_scaffold.dart';
import 'package:smartgk/global_widgets/search_box/primary_search_box.dart';

import '../../../../app/smart_gk_router.gr.dart';
import '../../../../global_widgets/container/shadow_container.dart';

class BooksListScreen extends StatelessWidget {
  const BooksListScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return PrimaryScaffold(
      hasLeading: false,
      appBarTitle: 'Books',
      child: Column(
        children: [
          VerticalSpace(10.h),
          PrimarySearchBox(
            elevation: 0,
            hasBorder: true,
            placeholder: 'Search Books',
            width: 340.w,
          ),
          VerticalSpace(10.h),
          Padding(
            padding: EdgeInsets.symmetric(
              horizontal: 30.w,
            ),
            child: PrimaryButton(
              radius: 20,
              width: 170.w,
              height: 30.h,
              align: Alignment.centerRight,
              label: '',
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Sort by: Name A-Z',
                    style: theme.textTheme.bodyText2
                        ?.copyWith(fontSize: 14, color: Colors.white),
                  ),
                  const Icon(
                    Icons.arrow_drop_down_outlined,
                    size: 18,
                    color: Colors.white,
                  )
                ],
              ),
            ),
          ),
          VerticalSpace(10.h),
          Expanded(
            child: ShadowContainer(
              padding: EdgeInsets.symmetric(vertical: 10),
              margin: EdgeInsets.zero,
              child: ListView.separated(
                  physics: BouncingScrollPhysics(),
                  primary: false,
                  padding: defaultPadding,
                  itemBuilder: (context, index) {
                    return InkWell(
                      onTap: () => context.router.push(
                        const BookDetailScreen(),
                      ),
                      child: Container(
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
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text('Darrigus dolor massa barios in arcu',
                                      style: theme.textTheme.button?.copyWith(
                                          color: Colors.black, fontSize: 16)),
                                  VerticalSpace(10.h),
                                  Row(
                                    children: [
                                      Text('Author:',
                                          style: theme.textTheme.bodyText1
                                              ?.copyWith(
                                            fontSize: 14,
                                            fontWeight: FontWeight.bold,
                                          )),
                                      VerticalSpace(5.h),
                                      Text('Lucas bis tars SEnd',
                                          style: theme.textTheme.bodyText1
                                              ?.copyWith(
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
                              ),
                            )
                          ],
                        ),
                      ),
                    );
                  },
                  separatorBuilder: (ctx, ind) => Divider(
                        color: theme.colorScheme.primary,
                        endIndent: 0,
                        indent: 0,
                        height: 30,
                      ),
                  itemCount: 8),
            ),
          )
        ],
      ),
    );
  }
}
