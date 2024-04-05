import 'package:flutter/material.dart';

import '../../../common/colors/colors.dart';
import '../../../common/utils/sizes/pad_margin.dart';
import 'widgets/icon_and_title_widet.dart';

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
      height: size.height,
      width: size.width,
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(10)),
      child: Column(
        children: [
          const BigTitileWidget(
            title: 'Moments forts',
            svgIcon: 'calendar',
          ),
          Placeholder(
            color: whiteColor,
          ),
        ],
      ),
    );
  }
}
