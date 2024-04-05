import 'package:bamboo/bamboo.dart';
import 'package:flutter/material.dart';

import '../../../data/experience_data.dart';
import '../../../models/formation_model.dart';
import 'widgets/icon_and_title_widet.dart';
import 'widgets/parcour_widget_animated.dart';

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

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(
        horizontal: Bamboo.number(
          context: context,
          mobile: 10,
          tablet: 50,
          desktop: 50,
          unit: Unit.px,
        ),
        vertical: 20,
      ),
      height: MediaQuery.sizeOf(context).height,
      width: widget.size.width,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          const BigTitileWidget(
            title: 'Experiences pro',
            svgIcon: 'mouse_icon',
          ),
          Expanded(
            child: ListView.builder(
              scrollDirection: Axis.vertical,
              itemBuilder: (context, index) {
                FormationModel formation = experienceList[index];
                return MyPalmaresAnimatedWidget(
                  formation: formation,
                  // isSelected: index == selectedIndex,
                  size: widget.size,
                );
              },
              itemCount: experienceList.length,
            ),
          ),
        ],
      ),
    );
  }
}
// Container(
                //   width: 350,
                //   height: 70,
                //   padding: const EdgeInsets.symmetric(vertical: 8),
                //   decoration: BoxDecoration(
                //     color: secondaryColor,
                //     borderRadius: BorderRadius.circular(10),
                //   ),
                //   child: Row(
                //     mainAxisAlignment: MainAxisAlignment.center,
                //     children: [
                //       ParcoursSwitch(
                //         text: 'Experiences',
                //         onTap: () {
                //           setState(() {
                //             isExp = false;
                //           });
                //         },
                //         isSelected: !isExp,
                //       ),
                //       ParcoursSwitch(
                //         text: 'Formations',
                //         onTap: () {
                //           setState(() {
                //             isExp = true;
                //           });
                //         },
                //         isSelected: isExp,
                //       ),
                //     ],
                //   ),
                // ),