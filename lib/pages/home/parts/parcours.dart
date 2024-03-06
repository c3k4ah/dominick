import 'package:dominick/common/utils/cursor_behavior/widget.dart';
import 'package:flutter/material.dart';

import '../../../common/colors/colors.dart';
import '../../../common/utils/sizes/pad_margin.dart';
import '../../../data/experience_data.dart';
import '../../../data/formations_data.dart';
import '../../../models/formation_model.dart';
import 'widgets/my_parcours_widget.dart';
import 'widgets/parcour_switch.dart';

class MyParcoursPart extends StatefulWidget {
  final Size size;
  const MyParcoursPart({
    super.key,
    required this.size,
  });

  @override
  State<MyParcoursPart> createState() => _MyPalmaresPartState();
}

class _MyPalmaresPartState extends State<MyParcoursPart> {
  int selectedIndex = 100;
  bool isExp = false;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(
        horizontal: bodyPadding,
        vertical: 20,
      ),
      height: widget.size.height,
      width: widget.size.width,
      child: Column(
        children: [
          Container(
            width: widget.size.width,
            height: 150,
            margin: const EdgeInsets.symmetric(vertical: 10),
            child: Column(
              children: [
                Text(
                  'Parcours',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: whiteColor,
                    fontSize: 50,
                  ),
                ),
                Container(
                  width: 350,
                  height: 70,
                  padding: const EdgeInsets.symmetric(vertical: 8),
                  decoration: BoxDecoration(
                    color: secondaryColor,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      ParcoursSwitch(
                        text: 'Experiences',
                        onTap: () {
                          setState(() {
                            isExp = false;
                          });
                        },
                        isSelected: !isExp,
                      ),
                      ParcoursSwitch(
                        text: 'Formations',
                        onTap: () {
                          setState(() {
                            isExp = true;
                          });
                        },
                        isSelected: isExp,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: ScrollChild(
              child: Column(
                children: List.generate(
                    isExp ? experienceList.length : formationList.length,
                    (index) {
                  FormationModel formation =
                      isExp ? experienceList[index] : formationList[index];
                  return MouseRegion(
                    onHover: (event) {
                      setState(() {
                        selectedIndex = index;
                      });
                    },
                    onExit: (event) {
                      setState(() {
                        selectedIndex = 100;
                      });
                    },
                    child: MyPalmaresWidget(
                      formation: formation,
                      isSelected: index == selectedIndex,
                      size: widget.size,
                    ),
                  );
                }),
              ),
            ),
          )
        ],
      ),
    );
  }
}
