import 'package:flutter/material.dart';
import 'package:skeletonizer/skeletonizer.dart';

class {{class_name.pascalCase()}}Skeletonizer extends StatelessWidget {
  const {{class_name.pascalCase()}}Skeletonizer({
    required this.child,
    super.key,
    this.enabled = true,
    this.effect = const ShimmerEffect(),
    this.ignorePointers = true,
    this.containersColor,
    this.ignoreContainers = false,
    this.justifyMultiLineText = true,
  });

  final Widget child;
  final bool enabled;
  final PaintingEffect? effect;
  final bool ignorePointers;
  final Color? containersColor;
  final bool ignoreContainers;
  final bool justifyMultiLineText;

  @override
  Widget build(BuildContext context) {
    return Skeletonizer(
      enabled: enabled,
      effect: effect,
      ignorePointers: ignorePointers,
      containersColor: containersColor,
      ignoreContainers: ignoreContainers,
      justifyMultiLineText: justifyMultiLineText,
      child: child,
    );
  }
}
