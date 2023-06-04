// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:unicons/unicons.dart';

import '../../../../common/colors/colors.dart';
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
    return Container(
      width: size.width,
      height: 120,
      margin: const EdgeInsets.symmetric(horizontal: 30),
      decoration: isSelected
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
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(
                vertical: 5,
              ).copyWith(left: 50),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  RotatedBox(
                    quarterTurns: 3,
                    child: Text(
                      formation.date,
                      style: TextStyle(
                        color: isSelected ? secondaryColor : whiteColor,
                        fontSize: 20,
                        fontFamily: 'Product Sans',
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Container(
                    width: 70,
                    height: 70,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      border: Border.all(
                        color: isSelected ? secondaryColor : tertioColor,
                        width: 5,
                      ),
                      image: const DecorationImage(
                        image: AssetImage('/images/sample.png'),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 160,
                    child: Text(
                      formation.title,
                      style: TextStyle(
                        color: isSelected ? secondaryColor : whiteColor,
                        fontSize: 20,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 80,
                    width: 160,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Icon(
                          UniconsLine.location_point,
                          color: isSelected ? secondaryColor : tertioColor,
                        ),
                        Text(
                          formation.location,
                          style: TextStyle(
                            color: isSelected ? secondaryColor : whiteColor,
                            fontFamily: 'Product Sans',
                            fontSize: 20,
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 80,
                    width: 200,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Icon(
                          UniconsLine.estate,
                          color: isSelected ? secondaryColor : tertioColor,
                        ),
                        Text(
                          formation.institut,
                          style: TextStyle(
                            color: isSelected ? secondaryColor : whiteColor,
                            fontFamily: 'Product Sans',
                            fontSize: 20,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          Container(
            width: 100,
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
                size: 30,
                color: isSelected ? secondaryColor : whiteColor,
              ),
            ),
          )
        ],
      ),
    );
  }
}
