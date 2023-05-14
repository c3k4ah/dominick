import 'package:dominick/common/colors/colors.dart';
import 'package:dominick/pages/home/parts/widgets/button.dart';
import 'package:flutter/material.dart';
import 'package:unicons/unicons.dart';

import '../../../common/utils/sizes/pad_margin.dart';

class AboutMePart extends StatelessWidget {
  final Size size;
  const AboutMePart({
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
      height: size.height * .8,
      width: size.width,
      child: Row(
        children: [
          Container(
            width: size.width * .3,
            margin: const EdgeInsets.only(
              right: 30,
              top: 20,
              bottom: 20,
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Padding(
                  padding: const EdgeInsets.only(bottom: 50),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Text(
                        'Mobile developper',
                        textAlign: TextAlign.right,
                        style: TextStyle(
                          color: tertioColor,
                          fontWeight: FontWeight.bold,
                          fontSize: 25,
                        ),
                      ),
                      Text(
                        'DOMINICK\nCekah',
                        textAlign: TextAlign.right,
                        style: TextStyle(
                          color: whiteColor,
                          fontWeight: FontWeight.w900,
                          fontSize: 80,
                        ),
                      ),
                    ],
                  ),
                ),
                MyCustomBtt(
                  onTap: () {},
                  width: 240,
                  size: const Size(240, 70),
                  text: 'Voir mon CV',
                  icon: UniconsLine.file_download,
                ),
              ],
            ),
          ),
          Expanded(
            child: Placeholder(
              color: whiteColor,
            ),
          ),
        ],
      ),
    );
  }
}
