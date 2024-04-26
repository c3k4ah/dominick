import 'package:bamboo/bamboo.dart';
import 'package:dominick/common/colors/colors.dart';
import 'package:dominick/common/utils/sizes/sizes.dart';
import 'package:flutter/material.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';
import 'package:responsive_grid/responsive_grid.dart';

import 'widgets/icon_and_title_widet.dart';

class SkillsPart extends StatelessWidget {
  const SkillsPart({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
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
      height: ResponsiveSize.number(
        context: context,
        mobile: 450,
        tablet: 700,
        mobileLarge: 400,
        desktop: 550,
      ),
      child: Column(
        children: [
          const BigTitileWidget(
            title: 'Mes compétences',
            svgIcon: 'brain',
          ),
          Expanded(
            child: ResponsiveGridList(
              squareCells: false,
              scroll: true,
              rowMainAxisAlignment: MainAxisAlignment.center,
              desiredItemWidth: ResponsiveSize.number(
                context: context,
                mobile: 50,
                tablet: 100,
                mobileLarge: 150,
                desktop: 150,
              ),
              minSpacing: ResponsiveSize.number(
                context: context,
                mobile: 40,
                tablet: 80,
                mobileLarge: 80,
                desktop: 50,
              ),
              children: List.generate(
                skills.length,
                (index) {
                  Skill skill = skills[index];
                  return Container(
                    // alignment: const Alignment(0, 0),
                    color: Colors.transparent,
                    child: Column(
                      children: [
                        CircularPercentIndicator(
                          radius: ResponsiveSize.number(
                            context: context,
                            mobile: 40.0,
                            tablet: 60.0,
                            mobileLarge: 60.0,
                            desktop: 60.0,
                          ),
                          lineWidth: ResponsiveSize.number(
                            context: context,
                            mobile: 8.0,
                            tablet: 8.0,
                            mobileLarge: 8.0,
                            desktop: 12.0,
                          ),
                          animateFromLastPercent: true,
                          backgroundColor: secondaryColor,
                          percent: skill.percentage,
                          animation: true,
                          center: Text(
                            '${(skill.percentage * 100).toInt()}%',
                            style: TextStyle(
                              fontSize: ResponsiveSize.number(
                                context: context,
                                mobile: 12,
                                tablet: 12,
                                mobileLarge: 12,
                                desktop: 15.0,
                              ),
                              fontFamily: 'Product Sans',
                              fontWeight: FontWeight.bold,
                              color: whiteColor,
                            ),
                          ),
                          progressColor: tertioColor,
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Text(
                          skill.name,
                          style: TextStyle(
                            fontSize: ResponsiveSize.number(
                              context: context,
                              mobile: 13,
                              tablet: 13,
                              mobileLarge: 13,
                              desktop: 15,
                            ),
                            color: whiteColor,
                            fontFamily: 'Product Sans',
                            fontWeight: FontWeight.bold,
                          ),
                        )
                      ],
                    ),
                  );
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}

List<Skill> skills = [
  Skill(name: 'Dart', percentage: 0.75),
  Skill(name: 'Flutter', percentage: 0.85),
  // Skill(name: 'Flutter Bloc', percentage: 0.7),
  Skill(name: 'Clean Archi', percentage: 0.9),
  Skill(name: 'CI/CD', percentage: 0.4),
  Skill(name: 'Firebase', percentage: 0.5),
  Skill(name: 'Golang', percentage: 0.25),
];

class Skill {
  final String name;
  final double percentage;

  Skill({
    required this.name,
    required this.percentage,
  });
}
