// ignore_for_file: unused_local_variable

import 'package:bamboo/bamboo.dart';
import 'package:dominick/common/utils/cursor_behavior/widget.dart';
import 'package:dominick/models/project_model.dart';
import 'package:flutter/material.dart';

import '../../../data/data.dart';
import 'widgets/icon_and_title_widet.dart';
import 'widgets/my_project_widget.dart';

class MyProjectPart extends StatelessWidget {
  final Size size;
  const MyProjectPart({
    super.key,
    required this.size,
  });

  @override
  Widget build(BuildContext context) {
    Size bttSize = Size(
      200,
      Bamboo.number(
        context: context,
        mobile: 40,
        desktop: 50,
        unit: Unit.px,
      ),
    );

    double textSize = Bamboo.number(
      context: context,
      mobile: 25,
      desktop: 50,
      unit: Unit.px,
    );
    double bodyheight = Bamboo.number(
      context: context,
      mobile: 300,
      tablet: 350,
      desktop: 500,
      unit: Unit.px,
    );
    return Column(
      children: [
        const BigTitileWidget(
          title: 'Mes projets',
          svgIcon: 'project',
        ),
        Container(
          margin: EdgeInsets.symmetric(
            horizontal: Bamboo.number(
              context: context,
              mobile: 5,
              desktop: 50,
              unit: Unit.px,
            ),
            vertical: Bamboo.number(
              context: context,
              mobile: 10,
              desktop: 20,
              unit: Unit.px,
            ),
          ),
          height: bodyheight,
          width: size.width,
          child: ScrollChild(
            child: ListView.builder(
              itemCount: projectLIst.length,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                ProjectModel project = projectLIst[index];
                return MyProjectWidget(
                  size: size,
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
