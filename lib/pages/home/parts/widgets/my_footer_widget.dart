// ignore_for_file: public_member_api_docs, sort_constructors_first, must_be_immutable
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
  double hgh = 70;
  double wth = 70;
  double radius = 15.0;
  @override
  Widget build(BuildContext context) {
    return Container(
      key: Key(widget.id.toString()),
      height: 70,
      width: 70,
      margin: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: widget.social.bgColor,
        borderRadius: BorderRadius.circular(widget.isSelected ? 20 : radius),
        border: Border.all(
          color: widget.isSelected ? tertioColor : whiteColor,
          width: 4,
        ),
      ),
      child: widget.social.icon,
    );
  }
}
