import 'package:flutter/material.dart';

import 'custom_behavior.dart';

class ScrollChild extends StatelessWidget {
  final Widget child;
  const ScrollChild({
    super.key,
    required this.child,
  });

  @override
  Widget build(BuildContext context) {
    return ScrollConfiguration(
      behavior: MyCustomScrollBehavior(),
      child: child,
    );
  }
}
