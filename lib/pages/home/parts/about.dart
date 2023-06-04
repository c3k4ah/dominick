import 'package:dominick/common/colors/colors.dart';
import 'package:dominick/pages/home/parts/widgets/button.dart';
import 'package:flutter/material.dart';
import 'package:unicons/unicons.dart';

import '../../../common/utils/sizes/pad_margin.dart';

class AboutMePart extends StatefulWidget {
  final Size size;
  const AboutMePart({
    super.key,
    required this.size,
  });

  @override
  State<AboutMePart> createState() => _AboutMePartState();
}

class _AboutMePartState extends State<AboutMePart> {
  bool isHover = false;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(
        horizontal: bodyPadding,
        vertical: 20,
      ),
      height: widget.size.height * .8,
      width: widget.size.width,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            width: widget.size.width * .3,
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
                          fontSize: 25,
                          fontFamily: 'Product Sans',
                        ),
                      ),
                      Text(
                        'DOMINICK\nCekah',
                        textAlign: TextAlign.right,
                        style: TextStyle(
                          color: whiteColor,
                          fontSize: 80,
                        ),
                      ),
                    ],
                  ),
                ),
                MyCustomBtt(
                  onTap: () {},
                  size: const Size(240, 70),
                  text: 'Voir mon CV',
                  icon: UniconsLine.file_download,
                ),
              ],
            ),
          ),
          MouseRegion(
            onEnter: (event) {
              setState(() {
                isHover = !isHover;
              });
            },
            onExit: (event) {
              setState(() {
                isHover = !isHover;
              });
            },
            child: Container(
              width: widget.size.width * .45,
              height: 450,
              padding: const EdgeInsets.symmetric(vertical: 50),
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: isHover
                      ? const AssetImage('/images/preview.png')
                      : const AssetImage('/images/preview_draw.png'),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
