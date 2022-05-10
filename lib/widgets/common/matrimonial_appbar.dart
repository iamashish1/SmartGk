import 'package:flutter/material.dart';
import 'package:matrimonial/constants/assets_constants.dart';
import 'package:matrimonial/constants/widget_constants.dart';
import 'package:matrimonial/widgets/simpleWidgets/svg_icons.dart';

class MatrimonialAppbar extends StatelessWidget with PreferredSizeWidget {
  const MatrimonialAppbar({
    Key? key,
    this.iconColor,
    this.onTapHome,
    this.onTapFav,
    this.onTapChat,
    this.onTapSetting,
  }) : super(key: key);

  final Color? iconColor;
  final void Function()? onTapHome;
  final void Function()? onTapFav;
  final void Function()? onTapChat;
  final void Function()? onTapSetting;
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Theme.of(context).colorScheme.secondary,
      alignment: Alignment.centerLeft,
      padding: defaultPadding,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SvgIcons(
            onTapIcon: onTapHome,
            svgAsset: AssetsConstants.homeIconSvg,
            iconColor: iconColor,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SvgIcons(
                svgAsset: AssetsConstants.favIconSvg,
                onTapIcon: onTapFav,
                iconColor: iconColor,
              ),
              frequentlyUsedSizedWidth,
              SvgIcons(
                onTapIcon: onTapChat,
                iconColor: iconColor,
                svgAsset: AssetsConstants.chatIconSvg,
              ),
              frequentlyUsedSizedWidth,
              SvgIcons(
                onTapIcon: onTapSetting,
                iconColor: iconColor,
                svgAsset: AssetsConstants.settingIconSvg,
              ),
            ],
          ),
        ],
      ),
    );
  }

  @override
  Size get preferredSize => const Size(double.infinity, 90);
}
