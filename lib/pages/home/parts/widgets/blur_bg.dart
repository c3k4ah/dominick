import 'dart:ui';

import 'package:flutter/material.dart';

class BlurContainer extends StatelessWidget {
  final Widget child;
  final double? radius;
  final double? sigma;
  final double? opacity;
  final EdgeInsets? margin;
  const BlurContainer({
    super.key,
    required this.child,
    this.radius,
    this.sigma,
    this.opacity,
    this.margin,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: margin ?? EdgeInsets.zero,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(radius ?? 30),
        child: BackdropFilter(
          filter: ImageFilter.blur(
            sigmaX: sigma ?? 10.0,
            sigmaY: sigma ?? 10.0,
          ),
          child: child,
        ),
      ),
    );
  }
}
