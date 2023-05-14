import 'package:flutter/material.dart';

import '../../../../common/colors/colors.dart';

class MyPalmaresWidget extends StatelessWidget {
  final Size size;
  const MyPalmaresWidget({
    super.key,
    required this.size,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: size.width,
      height: 80,
      color: whiteColor,
      margin: const EdgeInsets.symmetric(vertical: 10),
      child: const Placeholder(),
    );
  }
}
