import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class SvgIcons extends StatelessWidget {
  const SvgIcons({
    Key? key,
    required this.svgAsset,
    this.onTapIcon,
    this.iconColor,
  }) : super(key: key);
  final String svgAsset;
  final void Function()? onTapIcon;
  final Color? iconColor;
  @override
  Widget build(BuildContext context) {
    return Material(
      borderRadius: BorderRadius.circular(30),
      type: MaterialType.transparency,
      child: InkWell(
        splashColor: Theme.of(context).colorScheme.primary.withOpacity(0.2),
        borderRadius: BorderRadius.circular(30),
        radius: 30,
        onTap: onTapIcon,
        child: SvgPicture.asset(
          svgAsset,
          height: 26,
          color: iconColor,
        ),
      ),
    );
  }
}
