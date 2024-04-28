// ignore_for_file: unused_local_variable

import 'package:dominick/core/utils/cursor_behavior/widget.dart';
import 'package:dominick/models/project_model.dart';
import 'package:flutter/material.dart';

import '../../../../core/utils/sizes/responsive.dart';
import '../../../../data/data.dart';
import '../widgets/icon_and_title_widet.dart';
import '../widgets/my_project_widget.dart';

class MyProjectPart extends StatelessWidget {
  // final Size size;
  const MyProjectPart({
    super.key,
    // required this.size,
  });

  @override
  Widget build(BuildContext context) {
    Size bttSize = Size(
      200,
      ResponsiveSize.number(
        context: context,
        mobile: 100,
        desktop: 50,
        mobileLarge: 50,
        tablet: 50,
      ),
    );

    double textSize = ResponsiveSize.number(
      context: context,
      mobile: 25,
      desktop: 50,
      mobileLarge: 50,
      tablet: 50,
    );
    double bodyheight = ResponsiveSize.number(
      context: context,
      mobile: 380,
      tablet: 350,
      desktop: 500,
      mobileLarge: 500,
    );
    return Column(
      children: [
        const BigTitileWidget(
          title: 'Mes réalisations',
          svgIcon: 'project',
        ),
        Container(
          margin: EdgeInsets.symmetric(
            horizontal: ResponsiveSize.number(
              context: context,
              mobile: 5,
              desktop: 50,
              mobileLarge: 50,
              tablet: 10,
            ),
            vertical: ResponsiveSize.number(
              context: context,
              mobile: 10,
              desktop: 20,
              mobileLarge: 20,
              tablet: 10,
            ),
          ),
          height: bodyheight,
          width: MediaQuery.sizeOf(context).width,
          child: ScrollChild(
            child: ListView.builder(
              itemCount: projectLIst.length,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                ProjectModel project = projectLIst[index];
                return MyProjectWidget(
                  id: index,
                  projectModel: project,
                );
              },
            ),
          ),
        ),
      ],
    );
  }
}
