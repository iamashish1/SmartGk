import 'package:better_player/better_player.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:smartgk/constants/widget_constants.dart';
import 'package:smartgk/global_widgets/helper_widget/black_space.dart';

import '../widgets/course_video_container.dart';

class VideoPlayingScreen extends StatefulWidget {
  const VideoPlayingScreen({Key? key}) : super(key: key);

  @override
  State<VideoPlayingScreen> createState() => _VideoPlayingScreenState();
}

class _VideoPlayingScreenState extends State<VideoPlayingScreen> {
  late BetterPlayerController _betterPlayerController;

  @override
  void initState() {
    super.initState();
    BetterPlayerDataSource betterPlayerDataSource = BetterPlayerDataSource(
        BetterPlayerDataSourceType.network,
        "https://commondatastorage.googleapis.com/gtv-videos-bucket/sample/BigBuckBunny.mp4");
    _betterPlayerController = BetterPlayerController(
        const BetterPlayerConfiguration(),
        betterPlayerDataSource: betterPlayerDataSource);
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          AspectRatio(
            aspectRatio: 16 / 9,
            child: BetterPlayer(
              controller: _betterPlayerController,
            ),
          ),
          VerticalSpace(10.h),
          Padding(
            padding: defaultPadding,
            child: Text("4. Bibendum sit rutrum felis ac uta massa.",
                style: theme.textTheme.headline2
                    ?.copyWith(fontWeight: FontWeight.bold)),
          ),
          VerticalSpace(10.h),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25),
            child: Text(
                "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Feugiat suspendisse pulvinar sapien, senectus in nam urna nisl. Urna nunc sagittis donec ultricies.",
                style: theme.textTheme.bodyText2!
                    .copyWith(color: Colors.black, fontSize: 14)),
          ),
          VerticalSpace(10.h),
          Padding(
            padding: defaultPadding,
            child: Text('Next Video',
                style: theme.textTheme.headline2
                    ?.copyWith(fontSize: 18, fontWeight: FontWeight.bold)),
          ),
          VerticalSpace(10.h),
          Expanded(
            child: ListView.separated(
              primary: false,
              itemBuilder: (context, index) => CourseVideoContainer(
                height: 92.h,
                width: 351.w,
              ),
              separatorBuilder: (context, index) {
                return VerticalSpace(10.h);
              },
              itemCount: 7,
            ),
          )
        ],
      ),
    );
  }
}
