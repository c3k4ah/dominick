// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import 'package:dominick/common/colors/colors.dart';
import 'package:unicons/unicons.dart';

import '../../../../common/utils/helpers/parsing.dart';

class MyAwardsWidget extends StatelessWidget {
  final bool isHover;
  final int id;
  const MyAwardsWidget({
    Key? key,
    required this.isHover,
    required this.id,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Color hoverColor = isHover ? secondaryColor : tertioColor;
    return Container(
      width: 300,
      //margin: const EdgeInsets.symmetric(horizontal: 8),

      decoration: BoxDecoration(
        color: isHover ? tertioColor : Colors.transparent,
        borderRadius: BorderRadius.circular(15),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            isHover ? addZero(id + 1) : '',
            style: TextStyle(
              color: hoverColor,
              fontSize: 40,
              fontWeight: FontWeight.normal,
            ),
          ),
          SizedBox(
            height: 300,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 50),
                  child: Column(
                    children: [
                      SizedBox(
                        width: 300,
                        child: Text(
                          "Hackathon",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: hoverColor,
                            fontSize: 40,
                            fontWeight: FontWeight.normal,
                          ),
                        ),
                      ),
                      ListTile(
                        leading: Icon(
                          UniconsLine.trophy,
                          color: hoverColor,
                        ),
                        trailing: Text(
                          "1#",
                          textAlign: TextAlign.left,
                          style: TextStyle(
                            color: hoverColor,
                            fontSize: 20,
                            fontWeight: FontWeight.normal,
                          ),
                        ),
                      ),
                      ListTile(
                        leading: Icon(
                          UniconsLine.usd_square,
                          color: hoverColor,
                        ),
                        trailing: Text(
                          "1.5M Ar",
                          textAlign: TextAlign.start,
                          style: TextStyle(
                            color: hoverColor,
                            fontSize: 20,
                            fontWeight: FontWeight.normal,
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 300,
                        child: Text(
                          "ZahaGeek",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: hoverColor,
                            fontSize: 30,
                            fontWeight: FontWeight.normal,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  width: 300,
                  padding: const EdgeInsets.symmetric(
                    horizontal: 20,
                    vertical: 10,
                  ),
                  child: Text(
                    "Une plateforme développée par la team Angivy afin d’apporter une solution au numérique pour les enfants.",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: hoverColor,
                      fontSize: 15,
                      fontFamily: 'Product Sans',
                      fontWeight: FontWeight.normal,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Text(
            '2023',
            style: TextStyle(
              color: isHover ? secondaryColor : tertioColor,
              fontSize: 40,
              fontWeight: FontWeight.normal,
            ),
          ),
        ],
      ),
    );
  }
}
