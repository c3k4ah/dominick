// ignore_for_file: public_member_api_docs, sort_constructors_first, must_be_immutable
import 'package:dominick/core/utils/sizes/responsive.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../../../core/theme/app_color.dart';
import '../../../../models/social_media_model.dart';

class MyFooterWidget extends StatelessWidget {
  SMediaModel social;
  bool isSelected;
  int id;
  MyFooterWidget({
    Key? key,
    required this.social,
    required this.isSelected,
    required this.id,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final themeColor = Theme.of(context).extension<AppColors>()!;
    double bttsize = ResponsiveSize.number(
      context: context,
      small: 30,
      mobile: 40,
      tablet: 40,
      mobileLarge: 40,
      desktop: 40,
    );

    double radius = ResponsiveSize.number(
      context: context,
      small: 8.0,
      mobile: 10,
      tablet: 10,
      mobileLarge: 10,
      desktop: 10,
    );
    return InkWell(
      onTap: () async {
        if (!await launchUrl(Uri.parse(social.link))) {
          throw Exception('Could not launch');
        }
      },
      child: Container(
        key: Key(id.toString()),
        height: bttsize,
        width: bttsize,
        margin: const EdgeInsets.all(5),
        decoration: BoxDecoration(
          color: social.bgColor,
          borderRadius: BorderRadius.circular(radius),
          border: Border.all(
            color: themeColor.whiteColor ?? Colors.white,
            width: 2,
          ),
        ),
        child: Icon(
          social.icon,
          color: themeColor.whiteColor,
          size: ResponsiveSize.number(
            context: context,
            mobile: 20,
            tablet: 20,
            mobileLarge: 22,
            desktop: 22,
          ),
        ),
      ),
    );
  }
}
