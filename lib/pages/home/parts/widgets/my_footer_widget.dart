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
      mobile: 40,
      tablet: 50,
      mobileLarge: 70,
      desktop: 70,
    );

    double radius = ResponsiveSize.number(
      context: context,
      mobile: 10,
      tablet: 10,
      mobileLarge: 15.0,
      desktop: 15.0,
    );
    return Container(
      key: Key(widget.id.toString()),
      height: bttsize,
      width: bttsize,
      margin: EdgeInsets.all(
        ResponsiveSize.number(
          context: context,
          mobile: 10,
          tablet: 10,
          mobileLarge: 10,
          desktop: 10,
        ),
      ),
      decoration: BoxDecoration(
        color: widget.social.bgColor,
        borderRadius: BorderRadius.circular(radius),
        border: Border.all(
          color: whiteColor,
          width: ResponsiveSize.number(
            context: context,
            mobile: 4,
            tablet: 4,
            mobileLarge: 4,
            desktop: 4,
          ),
        ),
      ),
      child: Icon(
        widget.social.icon,
        color: whiteColor,
        size: ResponsiveSize.number(
          context: context,
          mobile: 20,
          tablet: 20,
          mobileLarge: 35,
          desktop: 35,
        ),
      ),
    );
  }
}
