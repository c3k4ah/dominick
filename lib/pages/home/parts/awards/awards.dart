import 'package:flutter_carousel_widget/flutter_carousel_widget.dart';
import 'package:flutter/material.dart';

import '../../../../core/theme/app_color.dart';
import '../../../../core/utils/sizes/responsive.dart';
import '../../../../data/palmares_data.dart';
import '../../../../models/time_line_model.dart';
import '../widgets/icon_and_title_widet.dart';
import '../widgets/my_awards_widget.dart';

class AwardPart extends StatefulWidget {
  // final Size size;
  const AwardPart({
    super.key,
    // required this.size,
  });

  @override
  State<AwardPart> createState() => _AwardPartState();
}

class _AwardPartState extends State<AwardPart> {
  int _currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    final themeColor = Theme.of(context).extension<AppColors>()!;
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
              desktop: 0.35,
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
              indicatorBackgroundColor: themeColor.secondaryColor,
              indicatorBorderColor: Colors.transparent,
              indicatorRadius: 5,
            ),
            onPageChanged: (index, reason) {
              setState(() {
                _currentIndex = index;
              });
            },
          ),
          items: List.generate(
            palmaresList.length,
            (index) {
              TimeLineContentModel palmares = palmaresList[index];
              return MyAwardsCarSwipeWidget(
                isInitial: index == _currentIndex,
                palmares: palmares,
              );
            },
          ),
        ),
      ],
    );
  }
}
