import 'package:dominick/common/utils/cursor_behavior/widget.dart';
import 'package:flutter/material.dart';

import '../../../common/colors/colors.dart';
import '../../../common/utils/sizes/pad_margin.dart';
import 'widgets/my_palmares_widget.dart';

class MyPalmaresPart extends StatelessWidget {
  final Size size;
  const MyPalmaresPart({
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
      child: Column(
        children: [
          Container(
            width: size.width,
            height: 100,
            margin: const EdgeInsets.symmetric(vertical: 20),
            child: const Placeholder(),
          ),
          Expanded(
            child: ScrollChild(
              child: ListView.builder(
                itemCount: 5,
                scrollDirection: Axis.vertical,
                itemBuilder: (context, index) {
                  return MyPalmaresWidget(
                    size: size,
                  );
                },
              ),
            ),
          )
        ],
      ),
    );
  }
}
