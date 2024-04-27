import 'package:flutter/material.dart';

class CustomSize {
  double width(BuildContext context) {
    return MediaQuery.sizeOf(context).width;
  }

  double height(BuildContext context) {
    return MediaQuery.sizeOf(context).height;
  }
}

class Responsive extends StatelessWidget {
  final Widget mobile;
  final Widget? small;
  final Widget? mobileLarge;
  final Widget? tablet;
  final Widget desktop;

  const Responsive({
    Key? key,
    this.small,
    required this.mobile,
    this.tablet,
    required this.desktop,
    this.mobileLarge,
  }) : super(key: key);

  static bool isSmall(BuildContext context) =>
      MediaQuery.of(context).size.width <= 300;

  static bool isMobile(BuildContext context) =>
      MediaQuery.of(context).size.width <= 500;

  static bool isMobileLarge(BuildContext context) =>
      MediaQuery.sizeOf(context).width <= 700;

  static bool isTablet(BuildContext context) =>
      MediaQuery.sizeOf(context).width < 1024;

  static bool isDesktop(BuildContext context) =>
      MediaQuery.sizeOf(context).width >= 1024;

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.sizeOf(context);
    if (size.width >= 1024) {
      return desktop;
    } else if (size.width >= 700 && tablet != null) {
      return tablet!;
    } else if (size.width >= 500 && mobileLarge != null) {
      return mobileLarge!;
    } else if (small != null && size.width >= 300) {
      return small!;
    } else {
      return mobile;
    }
  }
}

class ResponsiveSize {
  static double number({
    required BuildContext context,
    double? small,
    required double mobile,
    required double tablet,
    required double mobileLarge,
    required double desktop,
  }) {
    final Size size = MediaQuery.sizeOf(context);
    if (size.width >= 1024) {
      return desktop;
    } else if (size.width >= 700) {
      return tablet;
    } else if (size.width >= 500) {
      return mobileLarge;
    } else if (size.width >= 300) {
      return small ?? mobile;
    } else {
      return mobile;
    }
  }
}
