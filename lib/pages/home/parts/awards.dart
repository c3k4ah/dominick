import 'package:flutter_carousel_widget/flutter_carousel_widget.dart';
import 'package:scrollable_positioned_list/scrollable_positioned_list.dart';
import 'package:flutter/material.dart';
import 'package:unicons/unicons.dart';

import '../../../common/colors/colors.dart';
import '../../../common/utils/cursor_behavior/widget.dart';
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
  int selectedID = 0;
  int getItemList = palmaresList.length;
  String titre = "", desc = "";
  void next() {
    if (selectedID < getItemList - 1) {
      setState(() {
        selectedID++;
      });
      scroolTo(selectedID);
    } else {
      setState(() {
        selectedID = 0;
      });
      scroolTo(0);
    }
  }

  void previous() {
    if (selectedID > 0) {
      setState(() {
        selectedID--;
      });
      scroolTo(selectedID);
    } else {
      setState(() {
        selectedID = getItemList - 1;
      });
      scroolTo(getItemList + 1);
    }
  }

  final ItemScrollController itemScrollController = ItemScrollController();
  final ItemPositionsListener itemPositionsListener =
      ItemPositionsListener.create();

  void scroolTo(int id) {
    //controll la liste des widgets au premier plan
    itemScrollController.scrollTo(
      index: id,
      duration: const Duration(seconds: 1),
      curve: Curves.fastOutSlowIn,
    );
  }

  @override
  void initState() {
    super.initState();
  }

  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Responsive(
      mobile: _buildCarosel(),
      tablet: _buildCarosel(),
      mobileLarge: _buildCarosel(),
      desktop: _buildCarosel(),
      // desktop: Container(
      //   margin: const EdgeInsets.all(20).copyWith(
      //     left: bodyPadding,
      //     right: 0,
      //   ),
      //   height: ResponsiveSize.number(
      //     context: context,
      //     mobile: widget.size.height * .7,
      //     tablet: widget.size.height * .7,
      //     mobileLarge: widget.size.height * .7,
      //     desktop: 450,
      //   ),
      //   width: widget.size.width,
      //   color: primaryColor,
      //   child: Stack(
      //     alignment: AlignmentDirectional.center,
      //     children: [
      //       Container(
      //         margin: const EdgeInsets.symmetric(vertical: 50),
      //         decoration: BoxDecoration(
      //           color: secondaryColor,
      //           borderRadius: const BorderRadius.only(
      //             topLeft: Radius.circular(20),
      //             bottomLeft: Radius.circular(20),
      //           ),
      //         ),
      //       ),
      //       _buildAwards(),
      //     ],
      //   ),
      // ),
    );
  }

  Widget _buildCarosel() {
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
              desktop: 400,
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

  Widget _buildAwards() {
    return Container(
      decoration: const BoxDecoration(
        color: Colors.transparent,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(20),
          bottomLeft: Radius.circular(20),
        ),
      ),
      child: Row(
        children: [
          Container(
            width: 300,
            color: Colors.transparent,
            padding: const EdgeInsets.symmetric(
              vertical: 50,
              horizontal: 20,
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Mes Récompenses',
                  style: TextStyle(
                    color: whiteColor,
                    fontSize: 40,
                    fontWeight: FontWeight.normal,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 50,
                    vertical: 20,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SizedBox(
                        height: 50,
                        width: 50,
                        child: MaterialButton(
                          padding: EdgeInsets.zero,
                          onPressed: () => previous(),
                          color: primaryColor,
                          elevation: 0,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(50),
                          ),
                          child: Center(
                            child: Icon(
                              UniconsLine.angle_left_b,
                              color: whiteColor,
                              size: 30,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 50,
                        width: 50,
                        child: MaterialButton(
                          padding: EdgeInsets.zero,
                          onPressed: () => next(),
                          color: primaryColor,
                          elevation: 0,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(50),
                          ),
                          child: Center(
                            child: Icon(
                              UniconsLine.angle_right_b,
                              color: whiteColor,
                              size: 30,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
          Expanded(
            child: SizedBox(
              child: ScrollChild(
                child: ScrollablePositionedList.builder(
                  physics: const NeverScrollableScrollPhysics(),
                  itemScrollController: itemScrollController,
                  itemPositionsListener: itemPositionsListener,
                  itemCount: getItemList,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    TimeLineContentModel palmares = palmaresList[index];
                    return MyAwardsWidget(
                      palmares: palmares,
                      id: index,
                      isHover: selectedID == index,
                    );
                  },
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
