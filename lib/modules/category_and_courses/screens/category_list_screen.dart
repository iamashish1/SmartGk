import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:smartgk/app/smart_gk_router.gr.dart';
import 'package:smartgk/global_widgets/helper_widget/black_space.dart';
import 'package:smartgk/global_widgets/scaffold/primary_scaffold.dart';

class CategoryListScreen extends StatelessWidget {
  const CategoryListScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return PrimaryScaffold(
      appBarTitle: 'Category',
      hasLeading: false,
      child: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Column(
          children: [
            VerticalSpace(20.h),
            ListView.separated(
                shrinkWrap: true,
                itemBuilder: (context, index) => GestureDetector(
                      onTap: () => context.router.push(const CategoryScreen()),
                      child: Align(
                        alignment: Alignment.center,
                        child: Container(
                            height: 50.h,
                            width: 330.w,
                            decoration: BoxDecoration(
                                border: Border.all(
                                  color: theme.colorScheme.primary,
                                ),
                                borderRadius: BorderRadius.circular(10)),
                            child: Padding(
                              padding: const EdgeInsets.only(
                                left: 25.0,
                                right: 20,
                              ),
                              child: Row(
                                children: [
                                  Text(
                                    'Category 1',
                                    style: theme.textTheme.bodyText1
                                        ?.copyWith(fontSize: 20),
                                  ),
                                  const Spacer(),
                                  const Icon(
                                    Icons.arrow_forward_ios,
                                    size: 24,
                                  )
                                ],
                              ),
                            )),
                      ),
                    ),
                separatorBuilder: (ctx, ind) => const VerticalSpace(20),
                itemCount: 5)
          ],
        ),
      ),
    );
  }
}
