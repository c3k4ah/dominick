import 'package:dominick/common/colors/colors.dart';
import 'package:flutter/material.dart';

import '../../../common/utils/sizes/pad_margin.dart';

class MyHeaderPart extends StatelessWidget {
  const MyHeaderPart({
    super.key,
    required this.size,
  });
  final Size size;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: size.height,
      width: size.width,
      margin: EdgeInsets.symmetric(
        horizontal: bodyPadding,
      ).copyWith(
        top: 20,
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        border: Border.all(
          color: secondaryColor,
          width: 4,
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          logo(),
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 50),
            child: Text(
              'PORTFOLIO',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: whiteColor,
                fontSize: 50,
              ),
            ),
          ),
          /* SizedBox(
            width: size.width * .2,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: List.generate(
                reseauxListe.length,
                (index) => Container(
                  width: 60,
                  height: 60,
                  margin: const EdgeInsets.symmetric(horizontal: 5),
                  decoration: BoxDecoration(
                    color: reseauxListe[index].bgColor,
                    shape: BoxShape.circle,
                  ),
                  child: reseauxListe[index].icon,
                ),
              ),
            ),
          ),*/
        ],
      ),
    );
  }

  Widget logo() {
    return SizedBox(
      width: 400,
      child: Stack(
        children: [
          Row(
            children: [
              Container(
                width: 80,
                decoration: BoxDecoration(
                  color: whiteColor,
                  borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(20),
                    bottomLeft: Radius.circular(20),
                  ),
                ),
              ),
              Container(
                width: 3,
                color: primaryColor,
              ),
              Container(
                width: 300,
                color: whiteColor,
              ),
            ],
          ),
          Container(
            width: 250,
            margin: const EdgeInsets.symmetric(horizontal: 10),
            child: Stack(
              alignment: AlignmentDirectional.center,
              children: [
                // colorFilter: ColorFilter.mode(Colors.red, BlendMode.srcIn),
                Container(
                  height: 60,
                  padding: EdgeInsets.zero,
                  color: whiteColor,
                ),
                Container(
                  height: 150,
                  padding: EdgeInsets.zero,
                  child: ColorFiltered(
                    colorFilter: ColorFilter.mode(
                      secondaryColor,
                      BlendMode.srcIn,
                    ),
                    child: Image.asset('/icon/logo_blanc.png'),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
