import 'package:bamboo/bamboo.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../../common/colors/colors.dart';

class BigTitileWidget extends StatelessWidget {
  final String svgIcon;
  final String title;
  const BigTitileWidget({
    super.key,
    required this.svgIcon,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    double textSize = Bamboo.number(
      context: context,
      mobile: 25,
      desktop: 50,
      unit: Unit.px,
    );
    return SizedBox(
      // margin: const EdgeInsets.only(top: 50),

      width: MediaQuery.sizeOf(context).width,
      // height: Bamboo.number(
      //   context: context,
      //   mobile: 100,
      //   tablet: 120,
      //   desktop: 120,
      //   unit: Unit.px,
      // ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          SizedBox(
            width: MediaQuery.sizeOf(context).width,
            child: SvgPicture.asset(
              '/icon/$svgIcon.svg',
              width: Bamboo.number(
                context: context,
                mobile: 30,
                tablet: 50,
                desktop: 50,
                unit: Unit.px,
              ),
              colorFilter: ColorFilter.mode(
                whiteColor,
                BlendMode.srcIn,
              ),
            ),
          ),
          SizedBox(
            height: Bamboo.number(
              context: context,
              mobile: 50,
              tablet: 50,
              desktop: 70,
              unit: Unit.px,
            ),
            child: Text(
              title,
              textAlign: TextAlign.center,
              style: TextStyle(
                color: whiteColor,
                fontSize: textSize,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
