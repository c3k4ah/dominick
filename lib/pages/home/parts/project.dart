import 'package:dominick/common/utils/cursor_behavior/widget.dart';
import 'package:dominick/models/project_model.dart';
import 'package:flutter/material.dart';

import '../../../common/utils/sizes/pad_margin.dart';
import '../../../data/data.dart';
import 'widgets/my_project_widget.dart';

class MyProjectPart extends StatelessWidget {
  final Size size;
  const MyProjectPart({
    super.key,
    required this.size,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(
        horizontal: bodyPadding,
        vertical: 20,
      ),
      height: 550,
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
    );
  }
}
