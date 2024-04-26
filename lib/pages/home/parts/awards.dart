import 'package:flutter_carousel_widget/flutter_carousel_widget.dart';
import 'package:scrollable_positioned_list/scrollable_positioned_list.dart';
import 'package:flutter/material.dart';

import '../../../common/colors/colors.dart';
import '../../../common/utils/sizes/responsive.dart';
import '../../../data/palmares_data.dart';
import '../../../models/time_line_model.dart';
import 'widgets/icon_and_title_widet.dart';
import 'widgets/my_awards_widget.dart';

class AwardPart extends StatefulWidget {
  final Size size;
  const AwardPart({
    super.key,
    required this.size,
  });

  @override
  State<AwardPart> createState() => _AwardPartState();
}

class _AwardPartState extends State<AwardPart> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const BigTitileWidget(
          title: 'Mes Récompenses',
          svgIcon: 'cup',
        ),
        FlutterCarousel(
          options: CarouselOptions(
            floatingIndicator: false,
            enableInfiniteScroll: true,
            viewportFraction: ResponsiveSize.number(
              context: context,
              mobile: 0.8,
              tablet: 0.6,
              mobileLarge: 0.7,
              desktop: 0.45,
            ),
            enlargeCenterPage: true,
            height: ResponsiveSize.number(
              context: context,
              mobile: 300,
              tablet: 400,
              mobileLarge: 400,
              desktop: 500,
            ),
            showIndicator: true,
            slideIndicator: CircularSlideIndicator(
              indicatorBackgroundColor: secondaryColor,
              indicatorBorderColor: Colors.transparent,
              indicatorRadius: 5,
            ),
          ),
          items: List.generate(
            palmaresList.length,
            (index) {
              TimeLineContentModel palmares = palmaresList[index];
              return MyAwardsCarSwipeWidget(
                showShadow: false,
                size: widget.size,
                palmares: palmares,
                id: index,
              );
            },
          ),
        ),
      ],
    );
  }
}
