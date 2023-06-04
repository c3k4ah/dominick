// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:unicons/unicons.dart';

import 'package:dominick/common/colors/colors.dart';

import '../../../../common/utils/helpers/parsing.dart';
import '../../../../models/time_line_model.dart';

class MyAwardsWidget extends StatelessWidget {
  final bool isHover;
  final int id;
  final TimeLineContentModel palmares;
  const MyAwardsWidget({
    Key? key,
    required this.isHover,
    required this.id,
    required this.palmares,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Color hoverColor = isHover ? secondaryColor : whiteColor;
    return Container(
      width: 300,
      //margin: const EdgeInsets.symmetric(horizontal: 8),

      decoration: BoxDecoration(
        color: isHover ? whiteColor : Colors.transparent,
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
                          palmares.type,
                          textAlign: TextAlign.center,
                          overflow: TextOverflow.ellipsis,
                          maxLines: 1,
                          style: TextStyle(
                            color: hoverColor,
                            fontSize: 30,
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
                          "${palmares.rank}#",
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
                          palmares.price,
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
                          palmares.title,
                          textAlign: TextAlign.center,
                          overflow: TextOverflow.ellipsis,
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
                  height: 100,
                  padding: const EdgeInsets.symmetric(
                    horizontal: 20,
                    vertical: 10,
                  ),
                  child: Text(
                    palmares.description,
                    textAlign: TextAlign.center,
                    maxLines: 7,
                    overflow: TextOverflow.ellipsis,
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
            palmares.date,
            style: TextStyle(
              color: isHover ? secondaryColor : whiteColor,
              fontSize: 40,
              fontWeight: FontWeight.normal,
            ),
          ),
        ],
      ),
    );
  }
}
