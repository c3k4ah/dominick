import 'package:dominick/core/utils/sizes/responsive.dart';
import 'package:flutter/material.dart';

import '../../../../data/experience_data.dart';
import '../../../../models/formation_model.dart';
import '../widgets/icon_and_title_widet.dart';
import '../widgets/my_parcours_widget.dart';

class MyParcoursPart extends StatelessWidget {
  const MyParcoursPart({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(
        horizontal: ResponsiveSize.number(
            context: context,
            mobile: 10,
            tablet: 0,
            desktop: 0,
            mobileLarge: 0),
        vertical: 20,
      ),
      height: ResponsiveSize.number(
        context: context,
        mobile: 450,
        tablet: MediaQuery.sizeOf(context).height * .55,
        mobileLarge: MediaQuery.sizeOf(context).height * .7,
        desktop: 650,
      ),
      width: MediaQuery.sizeOf(context).width,
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
                return MyPalmaresWidget(
                  isSelected: false,
                  formation: formation,
                  // isSelected: index == selectedIndex,
                  size: MediaQuery.sizeOf(context),
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
