import 'package:dominick/core/utils/sizes/sizes.dart';
import 'package:dominick/data/data.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../../core/theme/app_color.dart';

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
    final themeColor = Theme.of(context).extension<AppColors>()!;
    double textSize = ResponsiveSize.number(
      context: context,
      mobile: 25,
      desktop: 40,
      mobileLarge: 40,
      tablet: 40,
    );
    return SizedBox(
      width: MediaQuery.sizeOf(context).width,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: svgIcon.isNotEmpty
            ? CrossAxisAlignment.center
            : CrossAxisAlignment.start,
        children: [
          if (svgIcon.isNotEmpty)
            SizedBox(
              width: MediaQuery.sizeOf(context).width,
              child: SvgPicture.asset(
                '${imageAsset.directory}/icon/$svgIcon.svg',
                width: ResponsiveSize.number(
                  context: context,
                  mobile: 30,
                  tablet: 50,
                  desktop: 50,
                  mobileLarge: 50,
                ),
                colorFilter: ColorFilter.mode(
                  themeColor.whiteColor ?? Colors.white,
                  BlendMode.srcIn,
                ),
              ),
            ),
          SizedBox(
            height: ResponsiveSize.number(
              context: context,
              mobile: svgIcon.isNotEmpty ? 50 : 30,
              tablet: 50,
              desktop: 70,
              mobileLarge: 70,
            ),
            child: Text(
              title,
              textAlign: TextAlign.center,
              style: TextStyle(
                color: themeColor.whiteColor,
                fontSize: textSize,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
