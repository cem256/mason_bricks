import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class UIKitSvgPicture extends StatelessWidget {
  const UIKitSvgPicture(
    this.assetName, {
    super.key,
    this.color,
    this.width,
    this.height,
    this.fit = BoxFit.scaleDown,
    this.alignment = Alignment.center,
    this.package,
    this.matchTextDirection = false,
  });

  final String assetName;
  final Color? color;
  final double? width;
  final double? height;
  final BoxFit fit;
  final Alignment alignment;
  final bool matchTextDirection;
  final String? package;

  @override
  Widget build(BuildContext context) {
    return SvgPicture.asset(
      assetName,
      colorFilter: color != null ? ColorFilter.mode(color!, BlendMode.srcIn) : null,
      width: width,
      height: height,
      fit: fit,
      alignment: alignment,
      package: package,
      matchTextDirection: matchTextDirection,
    );
  }
}
