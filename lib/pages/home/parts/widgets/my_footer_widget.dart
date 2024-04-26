// ignore_for_file: public_member_api_docs, sort_constructors_first, must_be_immutable
import 'package:dominick/common/utils/sizes/responsive.dart';
import 'package:flutter/material.dart';

import '../../../../common/colors/colors.dart';
import '../../../../models/social_media_model.dart';

class MyFooterWidget extends StatefulWidget {
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
  State<MyFooterWidget> createState() => _MyFooterWidgetState();
}

class _MyFooterWidgetState extends State<MyFooterWidget> {
  @override
  Widget build(BuildContext context) {
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
    return Container(
      key: Key(widget.id.toString()),
      height: bttsize,
      width: bttsize,
      margin: const EdgeInsets.all(5),
      decoration: BoxDecoration(
        color: widget.social.bgColor,
        borderRadius: BorderRadius.circular(radius),
        border: Border.all(
          color: whiteColor,
          width: 2,
        ),
      ),
      child: Icon(
        widget.social.icon,
        color: whiteColor,
        size: ResponsiveSize.number(
          context: context,
          mobile: 20,
          tablet: 20,
          mobileLarge: 22,
          desktop: 22,
        ),
      ),
    );
  }
}
