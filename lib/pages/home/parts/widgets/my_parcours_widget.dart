// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:bamboo/bamboo.dart';
import 'package:flutter/material.dart';
import 'package:unicons/unicons.dart';

import '../../../../common/colors/colors.dart';
import '../../../../models/formation_model.dart';

class MyPalmaresWidget extends StatefulWidget {
  final Size size;
  final bool isSelected;
  final FormationModel formation;
  const MyPalmaresWidget({
    Key? key,
    required this.size,
    required this.isSelected,
    required this.formation,
  }) : super(key: key);

  @override
  State<MyPalmaresWidget> createState() => _MyPalmaresWidgetState();
}

class _MyPalmaresWidgetState extends State<MyPalmaresWidget> {
  bool isExpanded = false;
  @override
  Widget build(BuildContext context) {
    double imageSize = Bamboo.number(
      context: context,
      mobile: 50,
      tablet: 70,
      desktop: 70,
      unit: Unit.px,
    );
    double textSize = Bamboo.number(
      context: context,
      mobile: 15,
      tablet: 20,
      desktop: 20,
      unit: Unit.px,
    );
    return Container(
      width: widget.size.width,
      height: Bamboo.number(
        context: context,
        mobile: 70,
        tablet: 120,
        desktop: 120,
        unit: Unit.px,
      ),
      margin: EdgeInsets.symmetric(
        horizontal: Bamboo.number(
          context: context,
          mobile: 0,
          tablet: 20,
          desktop: 50,
          unit: Unit.px,
        ),
      ),
      decoration: widget.isSelected
          ? BoxDecoration(
              color: whiteColor,
              borderRadius: BorderRadius.circular(10),
            )
          : BoxDecoration(
              color: primaryColor,
              border: Border(
                top: BorderSide(
                  width: 2,
                  color: secondaryColor,
                ),
              ),
            ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(
                vertical: 5,
              ),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  _buildFormationPeriodeWIdget(
                    textSize: textSize,
                    isSelected: widget.isSelected,
                  ),
                  _buildImagePart(
                    imageSize: imageSize,
                  ),
                  _buildFormationTitle(
                    textSize: textSize,
                    isSelected: widget.isSelected,
                    title: widget.formation.title,
                    context: context,
                  ),
                  BambooHidden(
                    mobile: true,
                    desktop: false,
                    tablet: false,
                    large: false,
                    child: Expanded(
                      child: _builFormationLocationWidget(
                        textSize: textSize,
                        isSelected: widget.isSelected,
                        context: context,
                        location: widget.formation.location,
                      ),
                    ),
                  ),
                  Expanded(
                    child: _buildFormationInstutWidget(
                      textSize: textSize,
                      isSelected: widget.isSelected,
                      context: context,
                      institut: widget.formation.institut,
                    ),
                  ),
                ],
              ),
            ),
          ),
          _buildIconArrow(
            context: context,
            isSelected: widget.isSelected,
          ),
        ],
      ),
    );
  }

  Widget _buildFormationPeriodeWIdget({
    required double textSize,
    required bool isSelected,
  }) {
    return RotatedBox(
      quarterTurns: 3,
      child: Text(
        widget.formation.date,
        style: TextStyle(
          color: isSelected ? secondaryColor : whiteColor,
          fontSize: textSize,
          fontFamily: 'Product Sans',
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }

  Widget _buildIconArrow({
    required BuildContext context,
    required bool isSelected,
  }) {
    return Container(
      width: Bamboo.number(
        context: context,
        mobile: 50,
        tablet: 100,
        desktop: 100,
        unit: Unit.px,
      ),
      decoration: BoxDecoration(
        color: isSelected ? tertioColor : primaryColor,
        borderRadius: const BorderRadius.only(
          topRight: Radius.circular(10),
          bottomRight: Radius.circular(10),
        ),
      ),
      child: Center(
        child: Icon(
          UniconsLine.angle_right_b,
          size: Bamboo.number(
            context: context,
            mobile: 20,
            tablet: 30,
            desktop: 30,
            unit: Unit.px,
          ),
          color: isSelected ? secondaryColor : whiteColor,
        ),
      ),
    );
  }

  Widget _buildFormationInstutWidget({
    required double textSize,
    required bool isSelected,
    required BuildContext context,
    required String institut,
  }) {
    return Container(
      margin: EdgeInsets.only(
        right: Bamboo.number(
          context: context,
          mobile: 5,
          tablet: 10,
          desktop: 10,
          unit: Unit.px,
        ),
      ),
      height: Bamboo.number(
        context: context,
        mobile: 80,
        tablet: 80,
        desktop: 80,
        unit: Unit.px,
      ),
      width: Bamboo.number(
        context: context,
        mobile: 80,
        tablet: 200,
        desktop: 200,
        unit: Unit.px,
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Icon(
            UniconsLine.estate,
            size: Bamboo.number(
              context: context,
              mobile: 20,
              tablet: 30,
              desktop: 30,
              unit: Unit.px,
            ),
            color: isSelected ? secondaryColor : tertioColor,
          ),
          Text(
            institut,
            style: TextStyle(
              color: isSelected ? secondaryColor : whiteColor,
              fontFamily: 'Product Sans',
              fontSize: textSize,
            ),
          ),
        ],
      ),
    );
  }

  Widget _builFormationLocationWidget({
    required double textSize,
    required bool isSelected,
    required BuildContext context,
    required String location,
  }) {
    return Container(
      margin: EdgeInsets.symmetric(
        horizontal: Bamboo.number(
          context: context,
          mobile: 5,
          tablet: 10,
          desktop: 10,
          unit: Unit.px,
        ),
      ),
      height: Bamboo.number(
        context: context,
        mobile: 80,
        tablet: 80,
        desktop: 80,
        unit: Unit.px,
      ),
      // width: Bamboo.number(
      //   context: context,
      //   mobile: 160,
      //   tablet: 160,
      //   desktop: 160,
      //   unit: Unit.px,
      // ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Icon(
            UniconsLine.location_point,
            size: Bamboo.number(
              context: context,
              mobile: 20,
              tablet: 30,
              desktop: 30,
              unit: Unit.px,
            ),
            color: isSelected ? secondaryColor : tertioColor,
          ),
          Text(
            location,
            style: TextStyle(
              color: isSelected ? secondaryColor : whiteColor,
              fontFamily: 'Product Sans',
              fontSize: textSize,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildFormationTitle({
    required double textSize,
    required bool isSelected,
    required String title,
    required BuildContext context,
  }) {
    return Container(
      margin: EdgeInsets.symmetric(
        horizontal: Bamboo.number(
          context: context,
          mobile: 5,
          tablet: 10,
          desktop: 10,
          unit: Unit.px,
        ),
      ),
      width: Bamboo.number(
        context: context,
        mobile: 100,
        tablet: 160,
        desktop: 160,
        unit: Unit.px,
      ),
      child: Text(
        title,
        style: TextStyle(
          color: isSelected ? secondaryColor : whiteColor,
          fontSize: textSize,
        ),
      ),
    );
  }

  Widget _buildImagePart({
    required double imageSize,
  }) {
    return Container(
      width: imageSize,
      height: imageSize,
      margin: const EdgeInsets.symmetric(
        horizontal: 5,
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        border: Border.all(
          color: widget.isSelected ? secondaryColor : tertioColor,
          width: 5,
        ),
        image: const DecorationImage(
          image: AssetImage('/images/sample.png'),
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
