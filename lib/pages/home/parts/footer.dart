import 'package:flutter/material.dart';

import '../../../common/colors/colors.dart';

class MyFooterPart extends StatelessWidget {
  final Size size;
  const MyFooterPart({
    super.key,
    required this.size,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 50),
      height: size.height * .5,
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
