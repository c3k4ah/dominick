// ignore_for_file: public_member_api_docs, sort_constructors_first

import 'package:dominick/core/utils/sizes/sizes.dart';
import 'package:flutter/material.dart';
import 'package:unicons/unicons.dart';

import '../../../../core/theme/app_color.dart';
import '../../../../models/formation_model.dart';

class MyPalmaresWidget extends StatelessWidget {
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
  Widget build(BuildContext context) {
    final themeColor = Theme.of(context).extension<AppColors>()!;
    Size imageSize = Size(
      ResponsiveSize.number(
        context: context,
        mobile: 60,
        tablet: 70,
        mobileLarge: 70,
        desktop: 120,
      ),
      ResponsiveSize.number(
        context: context,
        mobile: 70,
        tablet: 70,
        mobileLarge: 70,
        desktop: 100,
      ),
    );
    double textSize = ResponsiveSize.number(
      context: context,
      mobile: 12,
      tablet: 20,
      desktop: 20,
      mobileLarge: 20,
    );
    return Container(
      width: size.width,
      height: ResponsiveSize.number(
        context: context,
        mobile: 80,
        tablet: 120,
        desktop: 120,
        mobileLarge: 120,
      ),
      margin: EdgeInsets.symmetric(
        horizontal: ResponsiveSize.number(
          context: context,
          mobile: 0,
          tablet: 20,
          desktop: 15,
          mobileLarge: 15,
        ),
      ),
      decoration: isSelected
          ? BoxDecoration(
              color: themeColor.whiteColor,
              borderRadius: BorderRadius.circular(10),
            )
          : BoxDecoration(
              color: themeColor.primaryColor,
              border: Border(
                top: BorderSide(
                  width: 2,
                  color: themeColor.secondaryColor ?? Colors.black,
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
                    isSelected: isSelected,
                    context: context,
                  ),
                  Expanded(
                    child: _buildImagePart(
                      imageSize: imageSize,
                      image: formation.urlImage,
                      context: context,
                    ),
                  ),
                  SizedBox(
                    width: ResponsiveSize.number(
                      context: context,
                      mobile: 10,
                      tablet: 20,
                      desktop: 20,
                      mobileLarge: 20,
                    ),
                  ),
                  Expanded(
                    child: _buildFormationTitle(
                      textSize: textSize,
                      isSelected: isSelected,
                      title: formation.title,
                      context: context,
                    ),
                  ),
                  Responsive(
                    mobile: const SizedBox(),
                    desktop: Expanded(
                      child: _builFormationLocationWidget(
                        textSize: textSize,
                        isSelected: isSelected,
                        context: context,
                        location: formation.location,
                      ),
                    ),
                    tablet: Expanded(
                      child: _builFormationLocationWidget(
                        textSize: textSize,
                        isSelected: isSelected,
                        context: context,
                        location: formation.location,
                      ),
                    ),
                    mobileLarge: Expanded(
                      child: _builFormationLocationWidget(
                        textSize: textSize,
                        isSelected: isSelected,
                        context: context,
                        location: formation.location,
                      ),
                    ),
                  ),
                  Expanded(
                    child: _buildFormationInstutWidget(
                      textSize: textSize,
                      isSelected: isSelected,
                      context: context,
                      institut: formation.institut,
                    ),
                  ),
                ],
              ),
            ),
          ),
          _buildIconArrow(
            context: context,
            isSelected: formation.isActive ?? false,
          ),
        ],
      ),
    );
  }

  Widget _buildFormationPeriodeWIdget({
    required double textSize,
    required bool isSelected,
    required BuildContext context,
  }) {
    final themeColor = Theme.of(context).extension<AppColors>()!;
    return RotatedBox(
      quarterTurns: 3,
      child: Text(
        formation.date,
        style: TextStyle(
          color: isSelected ? themeColor.secondaryColor : themeColor.whiteColor,
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
    final themeColor = Theme.of(context).extension<AppColors>()!;
    return Container(
      width: ResponsiveSize.number(
        context: context,
        mobile: 30,
        tablet: 100,
        desktop: 100,
        mobileLarge: 100,
      ),
      decoration: BoxDecoration(
        color: themeColor.primaryColor,
        borderRadius: const BorderRadius.only(
          topRight: Radius.circular(10),
          bottomRight: Radius.circular(10),
        ),
      ),
      child: Center(
        child: CircleAvatar(
          backgroundColor: isSelected ? Colors.greenAccent : Colors.redAccent,
          radius: ResponsiveSize.number(
            context: context,
            mobile: 4,
            tablet: 4,
            desktop: 5,
            mobileLarge: 5,
          ),
        ),
        // child: Icon(
        //   UniconsLine.circle,
        //   size: ResponsiveSize.number(
        //     context: context,
        //     mobile: 20,
        //     tablet: 30,
        //     desktop: 30,
        //     mobileLarge: 30,
        //   ),
        //   color: isSelected ? themeColor.secondaryColor : themeColor.whiteColor,
        // ),
      ),
    );
  }

  Widget _buildFormationInstutWidget({
    required double textSize,
    required bool isSelected,
    required BuildContext context,
    required String institut,
  }) {
    final themeColor = Theme.of(context).extension<AppColors>()!;
    return Container(
      margin: EdgeInsets.only(
        right: ResponsiveSize.number(
          context: context,
          mobile: 5,
          tablet: 10,
          desktop: 10,
          mobileLarge: 10,
        ),
      ),
      height: ResponsiveSize.number(
        context: context,
        mobile: 80,
        tablet: 80,
        desktop: 80,
        mobileLarge: 80,
      ),
      width: ResponsiveSize.number(
        context: context,
        mobile: 80,
        tablet: 200,
        desktop: 200,
        mobileLarge: 200,
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Icon(
            UniconsLine.estate,
            size: ResponsiveSize.number(
              context: context,
              mobile: 20,
              tablet: 30,
              desktop: 30,
              mobileLarge: 30,
            ),
            color:
                isSelected ? themeColor.secondaryColor : themeColor.tertioColor,
          ),
          Text(
            institut,
            style: TextStyle(
              color: isSelected
                  ? themeColor.secondaryColor
                  : themeColor.whiteColor,
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
    final themeColor = Theme.of(context).extension<AppColors>()!;
    return Container(
      margin: EdgeInsets.symmetric(
        horizontal: ResponsiveSize.number(
          context: context,
          mobile: 5,
          tablet: 10,
          desktop: 10,
          mobileLarge: 10,
        ),
      ),
      height: ResponsiveSize.number(
        context: context,
        mobile: 80,
        tablet: 80,
        desktop: 80,
        mobileLarge: 80,
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Icon(
            UniconsLine.location_point,
            size: ResponsiveSize.number(
              context: context,
              mobile: 20,
              tablet: 30,
              desktop: 30,
              mobileLarge: 30,
            ),
            color:
                isSelected ? themeColor.secondaryColor : themeColor.tertioColor,
          ),
          Expanded(
            child: Text(
              location,
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
              style: TextStyle(
                color: isSelected
                    ? themeColor.secondaryColor
                    : themeColor.whiteColor,
                fontFamily: 'Product Sans',
                fontSize: textSize,
              ),
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
    final themeColor = Theme.of(context).extension<AppColors>()!;
    return Container(
      margin: EdgeInsets.symmetric(
        horizontal: ResponsiveSize.number(
          context: context,
          mobile: 5,
          tablet: 10,
          desktop: 10,
          mobileLarge: 10,
        ),
      ),
      width: ResponsiveSize.number(
        context: context,
        mobile: 100,
        tablet: 160,
        desktop: 160,
        mobileLarge: 160,
      ),
      child: Text(
        title,
        style: TextStyle(
          color: isSelected ? themeColor.secondaryColor : themeColor.whiteColor,
          fontSize: textSize,
        ),
      ),
    );
  }

  Widget _buildImagePart({
    required Size imageSize,
    required String image,
    required BuildContext context,
  }) {
    final themeColor = Theme.of(context).extension<AppColors>()!;
    return Container(
      width: imageSize.width,
      height: imageSize.height,
      margin: const EdgeInsets.symmetric(
        horizontal: 5,
      ),
      child: Center(
        child: Image.asset(
          image,
          fit: BoxFit.fitWidth,
          width: imageSize.width *
              (formation.institut.toLowerCase() == 'ibonia' ? 1 : .7),
          colorBlendMode: BlendMode.srcIn,
          color: isSelected ? themeColor.secondaryColor : themeColor.whiteColor,
        ),
      ),
    );
  }
}
