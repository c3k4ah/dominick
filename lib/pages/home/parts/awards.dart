import 'package:flutter/material.dart';

import '../../../common/colors/colors.dart';
import '../../../common/utils/sizes/pad_margin.dart';

class AwardPart extends StatelessWidget {
  final Size size;
  const AwardPart({
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
        color: secondaryColor,
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(20),
          bottomLeft: Radius.circular(20),
        ),
      ),
    );
  }
}
