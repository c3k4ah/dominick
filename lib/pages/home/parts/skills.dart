import 'package:flutter/material.dart';

import '../../../common/colors/colors.dart';
import '../../../common/utils/sizes/pad_margin.dart';

class MyBigPart extends StatelessWidget {
  final Size size;
  const MyBigPart({
    super.key,
    required this.size,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(
        horizontal: bodyPadding,
        vertical: 20,
      ),
      height: size.height * .9,
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
