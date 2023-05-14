import 'package:dominick/common/colors/colors.dart';
import 'package:dominick/common/utils/cursor_behavior/widget.dart';
import 'package:flutter/material.dart';

import '../../../common/utils/sizes/pad_margin.dart';
import 'widgets/my_project_widget.dart';

class MyProjectPart extends StatelessWidget {
  final Size size;
  const MyProjectPart({
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
      child: ScrollChild(
        child: ListView.builder(
          itemCount: 3,
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
            return MyProjectWidget(
              size: size,
            );
          },
        ),
      ),
    );
  }
}
