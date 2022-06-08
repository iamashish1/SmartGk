import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AuthScaffold extends StatelessWidget {
  const AuthScaffold({Key? key, required this.child}) : super(key: key);
  final Widget child;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: const Color(0XffE5E5E5),
      resizeToAvoidBottomInset: true,
      extendBodyBehindAppBar: true,
      extendBody: true,
      body:  Stack(
        children: [
          SizedBox(
            height: MediaQuery.of(context).size.height - kToolbarHeight,
            width: MediaQuery.of(context).size.width,
          ),
          Positioned(
            top: -49.h,
            left: -57.w,
            child: Container(
              height: 334.h,
              width: 334.h,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Theme.of(context).colorScheme.primary.withOpacity(0.5),
              ),
            ),
          ),
          Positioned(
            top: 74.h,
            left: -139.w,
            child: Container(
              height: 334.h,
              width: 334.h,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Theme.of(context).colorScheme.primary.withOpacity(0.5),
              ),
            ),
          ),
          child
        ],
      ),
    );
  }
}
