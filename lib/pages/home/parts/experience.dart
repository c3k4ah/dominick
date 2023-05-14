import 'package:flutter/material.dart';

import '../../../common/colors/colors.dart';
import '../../../common/utils/sizes/pad_margin.dart';

class ExperiencePart extends StatelessWidget {
  final Size size;
  const ExperiencePart({
    super.key,
    required this.size,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(20).copyWith(
        left: bodyPadding,
        right: 0,
      ),
      height: size.height * .7,
      width: size.width,
      decoration: BoxDecoration(
        border: Border.all(
          width: 2,
          color: whiteColor,
        ),
      ),
      child: Placeholder(
        color: whiteColor,
      ),
    );
  }
}
