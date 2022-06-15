import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:persistent_bottom_nav_bar/persistent-tab-view.dart';
import 'package:smartgk/constants/assets_constants.dart';
import 'package:smartgk/modules/category_and_courses/screens/category_list_screen.dart';

import '../../app/smart_gk_router.gr.dart' as ge;
import '../category_and_courses/screens/books/books_list_screen.dart';
import '../category_and_courses/screens/course_screen.dart';
import '../main/screens/home_screen.dart';
import '../profile/screens/profile_screen.dart';

class BottomNav extends StatefulWidget {
  const BottomNav({Key? key}) : super(key: key);

  @override
  State<BottomNav> createState() => _BottomNavState();
}

class _BottomNavState extends State<BottomNav> {
  List<Widget> list = [
    const HomeScreen(),
    const CategoryListScreen(),
    const BooksListScreen(),
    const ProfileScreen(),
  ];

  List<PersistentBottomNavBarItem> _navBarsItems() {
    return [
      PersistentBottomNavBarItem(
        inactiveIcon: SvgPicture.asset(AssetsConstants.homeIcon),
        icon: SvgPicture.asset(AssetsConstants.selectedHomeIcon),
        activeColorPrimary: Theme.of(context).colorScheme.primary,
      ),
      PersistentBottomNavBarItem(
        inactiveIcon: SvgPicture.asset(AssetsConstants.courseIcon),
        icon: SvgPicture.asset(AssetsConstants.selectedCourseIcon),
        activeColorPrimary: Theme.of(context).colorScheme.primary,
      ),
      PersistentBottomNavBarItem(
        inactiveIcon: SvgPicture.asset(AssetsConstants.bookIcon),
        icon: SvgPicture.asset(AssetsConstants.selectedBookIcon),
        activeColorPrimary: Theme.of(context).colorScheme.primary,
      ),
      PersistentBottomNavBarItem(
        title: 'Home',
        inactiveIcon: SvgPicture.asset(AssetsConstants.profileIcon),
        icon: SvgPicture.asset(AssetsConstants.selectedProfileIcon),
        activeColorPrimary: Theme.of(context).colorScheme.primary,
      ),
    ];
  }

  late PersistentTabController _controller;

  @override
  void initState() {
    super.initState();
    _controller = PersistentTabController(initialIndex: 0);
  }

  @override
  Widget build(BuildContext context) {
    return PersistentTabView(
      context,
      controller: _controller,
      screens: list,
      items: _navBarsItems(),
      confineInSafeArea: true,
      backgroundColor: Colors.white, // Default is Colors.white.
      handleAndroidBackButtonPress: true, // Default is true.
      resizeToAvoidBottomInset:
          true, // This needs to be true if you want to move up the screen when keyboard appears. Default is true.
      stateManagement: true, // Default is true.
      hideNavigationBarWhenKeyboardShows:
          true, // Recommended to set 'resizeToAvoidBottomInset' as true while using this argument. Default is true.
      decoration: NavBarDecoration(
        borderRadius: BorderRadius.circular(10.0),
        colorBehindNavBar: Colors.white,
      ),
      navBarHeight: 74.h,
      popAllScreensOnTapOfSelectedTab: true,
      popActionScreens: PopActionScreensType.all,
      itemAnimationProperties: ItemAnimationProperties(
        // Navigation Bar's items animation properties.
        duration: Duration(milliseconds: 200),
        curve: Curves.ease,
      ),
      screenTransitionAnimation: ScreenTransitionAnimation(
        // Screen transition animation on change of selected tab.
        animateTabTransition: true,
        curve: Curves.ease,
        duration: Duration(milliseconds: 200),
      ),
      navBarStyle:
          NavBarStyle.style7, // Choose the nav bar style with this property.
    );
  }
}
