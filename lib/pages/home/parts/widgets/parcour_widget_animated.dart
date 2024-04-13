// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:bamboo/bamboo.dart';
import 'package:flutter/material.dart';
import 'package:unicons/unicons.dart';

import '../../../../common/colors/colors.dart';
import '../../../../models/formation_model.dart';

class MyPalmaresAnimatedWidget extends StatefulWidget {
  final Size size;
  // final bool isSelected;
  final FormationModel formation;
  const MyPalmaresAnimatedWidget({
    Key? key,
    required this.size,
    // required this.isSelected,
    required this.formation,
  }) : super(key: key);

  @override
  State<MyPalmaresAnimatedWidget> createState() => _MyPalmaresWidgetState();
}

class _MyPalmaresWidgetState extends State<MyPalmaresAnimatedWidget>
    with SingleTickerProviderStateMixin {
  double height = 0;
  double animatedMobileHeight = 100;
  double animatedTabletHeight = 150;
  double animatedDesktopHeight = 150;
  // late AnimationController _controller;
  bool _isToggled = false;

  void _toggleContainer() {
    setState(() {
      _isToggled = !_isToggled;
    });
  }

  @override
  void initState() {
    // _controller = AnimationController(
    //   vsync: this,
    //   duration: const Duration(milliseconds: 500),
    // );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    double imageSize = Bamboo.number(
      context: context,
      mobile: 50,
      tablet: 70,
      desktop: 70,
      unit: Unit.px,
    );
    double textSize = Bamboo.number(
      context: context,
      mobile: 15,
      tablet: 20,
      desktop: 20,
      unit: Unit.px,
    );

    return AnimatedContainer(
      margin: EdgeInsets.symmetric(
        horizontal: Bamboo.number(
          context: context,
          mobile: 0,
          tablet: 20,
          desktop: 50,
          unit: Unit.px,
        ),
      ),
      duration: const Duration(milliseconds: 500),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(
            width: widget.size.width,
            height: Bamboo.number(
              context: context,
              mobile: 70,
              tablet: 120,
              desktop: 120,
              unit: Unit.px,
            ),
            decoration: _isToggled
                ? BoxDecoration(
                    color: whiteColor,
                    borderRadius: BorderRadius.only(
                      topLeft: const Radius.circular(10),
                      topRight: const Radius.circular(10),
                      bottomLeft: _isToggled
                          ? const Radius.circular(0)
                          : const Radius.circular(10),
                      bottomRight: _isToggled
                          ? const Radius.circular(0)
                          : const Radius.circular(10),
                    ),
                  )
                : BoxDecoration(
                    color: primaryColor,
                    border: Border(
                      top: BorderSide(
                        width: 2,
                        color: secondaryColor,
                      ),
                    ),
                  ),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                      vertical: 5,
                    ),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        _buildFormationPeriodeWIdget(
                          textSize: textSize,
                          isSelected: _isToggled,
                        ),
                        Expanded(
                          flex: 1,
                          child: _buildImagePart(
                            imageSize: imageSize,
                            isSelected: _isToggled,
                            imgPath: widget.formation.urlImage,
                          ),
                        ),
                        Expanded(
                          flex: 1,
                          child: _buildFormationTitle(
                            textSize: textSize,
                            isSelected: _isToggled,
                            title: widget.formation.title,
                            context: context,
                          ),
                        ),
                        BambooHidden(
                          mobile: true,
                          desktop: false,
                          tablet: false,
                          large: false,
                          child: Expanded(
                            child: _builFormationLocationWidget(
                              textSize: textSize,
                              isSelected: _isToggled,
                              context: context,
                              location: widget.formation.location,
                            ),
                          ),
                        ),
                        Expanded(
                          flex: 2,
                          child: _buildFormationInstutWidget(
                            textSize: textSize,
                            isSelected: _isToggled,
                            context: context,
                            institut: widget.formation.institut,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                _buildIconArrow(
                  context: context,
                  isSelected: _isToggled,
                  isExpanded: _isToggled,
                  onTap: () {
                    if (widget.formation.projects.isNotEmpty) {
                      _toggleContainer();
                    }
                  },
                ),
              ],
            ),
          ),
          _buildProjectDescription(widget.formation.projects, textSize),
        ],
      ),
    );
  }

  Widget _buildFormationPeriodeWIdget({
    required double textSize,
    required bool isSelected,
  }) {
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: Bamboo.number(
          context: context,
          mobile: 5,
          tablet: 10,
          desktop: 10,
          unit: Unit.px,
        ),
      ),
      child: RotatedBox(
        quarterTurns: 3,
        child: Text(
          widget.formation.date,
          style: TextStyle(
            color: isSelected ? secondaryColor : whiteColor,
            fontSize: textSize,
            fontFamily: 'Product Sans',
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }

  Widget _buildIconArrow({
    required BuildContext context,
    required bool isSelected,
    required bool isExpanded,
    required VoidCallback? onTap,
  }) {
    return InkWell(
      onTap: onTap,
      child: Container(
        width: Bamboo.number(
          context: context,
          mobile: 50,
          tablet: 100,
          desktop: 100,
          unit: Unit.px,
        ),
        decoration: BoxDecoration(
          color: isSelected ? whiteColor : primaryColor,
          borderRadius: const BorderRadius.only(
            topRight: Radius.circular(10),
            bottomRight: Radius.circular(10),
          ),
        ),
        child: Center(
          child: RotatedBox(
            quarterTurns: isExpanded ? 1 : 0,
            child: Icon(
              UniconsLine.angle_right_b,
              size: Bamboo.number(
                context: context,
                mobile: 20,
                tablet: 30,
                desktop: 30,
                unit: Unit.px,
              ),
              color: isSelected ? secondaryColor : whiteColor,
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildFormationInstutWidget({
    required double textSize,
    required bool isSelected,
    required BuildContext context,
    required String institut,
  }) {
    return Container(
      margin: EdgeInsets.only(
        left: Bamboo.number(
          context: context,
          mobile: 10,
          tablet: 10,
          desktop: 10,
          unit: Unit.px,
        ),
      ),
      height: Bamboo.number(
        context: context,
        mobile: 80,
        tablet: 80,
        desktop: 80,
        unit: Unit.px,
      ),
      width: Bamboo.number(
        context: context,
        mobile: 80,
        tablet: 200,
        desktop: 200,
        unit: Unit.px,
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Icon(
            UniconsLine.estate,
            size: Bamboo.number(
              context: context,
              mobile: 20,
              tablet: 30,
              desktop: 30,
              unit: Unit.px,
            ),
            color: isSelected ? secondaryColor : tertioColor,
          ),
          const SizedBox(
            width: 10,
          ),
          Text(
            institut,
            style: TextStyle(
              color: isSelected ? secondaryColor : whiteColor,
              fontFamily: 'Product Sans',
              fontSize: textSize,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildProjectDescription(
    List<ProjectDescriptionModel> projects,
    double textSize,
  ) {
    return Container(
      width: MediaQuery.sizeOf(context).width,
      height: Bamboo.number(
        context: context,
        mobile: _isToggled ? (70 + animatedMobileHeight) : 0,
        tablet: _isToggled ? (120 + animatedMobileHeight) : 0,
        desktop: _isToggled ? (120 + animatedMobileHeight) : 0,
        unit: Unit.px,
      ),
      margin: const EdgeInsets.only(
        bottom: 10,
      ),
      decoration: BoxDecoration(
        color: whiteColor,
        borderRadius: const BorderRadius.only(
          bottomLeft: Radius.circular(10),
          bottomRight: Radius.circular(10),
        ),
      ),
      child: ListView.builder(
        itemCount: projects.length,
        itemBuilder: (context, index) {
          ProjectDescriptionModel project = projects[index];

          return Container(
            padding: const EdgeInsets.symmetric(
              horizontal: 10,
              vertical: 5,
            ),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Icon(
                  (project.isMobilePlatform ?? true)
                      ? UniconsLine.mobile_android
                      : UniconsLine.desktop,
                  size: textSize + 10,
                  color: Colors.black,
                ),
                const SizedBox(
                  width: 10,
                ),
                Expanded(
                  child: SizedBox(
                    width: MediaQuery.sizeOf(context).width,
                    child: Column(
                      children: [
                        adaptativeTextWidget(
                          Text(
                            project.title,
                            style: TextStyle(
                              color: Colors.black,
                              fontFamily: 'Product Sans',
                              fontWeight: FontWeight.bold,
                              fontSize: textSize,
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        if (project.tasks != null)
                          SizedBox(
                            width: double.infinity,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: project.tasks!
                                  .map(
                                    (task) => Row(
                                      children: [
                                        Icon(
                                          UniconsLine.arrow,
                                          size: 20,
                                          color: secondaryColor,
                                        ),
                                        const SizedBox(
                                          width: 10,
                                        ),
                                        Expanded(
                                          child: Text(
                                            task,
                                            maxLines: 1,
                                            overflow: TextOverflow.ellipsis,
                                            style: TextStyle(
                                              color: secondaryColor,
                                              fontFamily: 'Product Sans',
                                              fontSize: 12,
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  )
                                  .toList(),
                            ),
                          ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }

  Widget adaptativeTextWidget(
    Text myTextWidget,
  ) {
    return LayoutBuilder(
      builder: (context, size) {
        final span =
            TextSpan(text: myTextWidget.data, style: myTextWidget.style);
        final tp = TextPainter(
          textDirection: TextDirection.ltr,
          text: span,
          maxLines: 1,
        );
        tp.layout(maxWidth: size.maxWidth);

        if (tp.didExceedMaxLines) {
          return SizedBox(
            width: double.infinity,
            height: 40,
            child: myTextWidget,
          );
        } else {
          return SizedBox(
            width: double.infinity,
            height: 20,
            child: myTextWidget,
          );
        }
      },
    );
  }

  Widget _builFormationLocationWidget({
    required double textSize,
    required bool isSelected,
    required BuildContext context,
    required String location,
  }) {
    return Container(
      margin: EdgeInsets.symmetric(
        horizontal: Bamboo.number(
          context: context,
          mobile: 5,
          tablet: 10,
          desktop: 10,
          unit: Unit.px,
        ),
      ),
      height: Bamboo.number(
        context: context,
        mobile: 80,
        tablet: 80,
        desktop: 80,
        unit: Unit.px,
      ),
      // width: Bamboo.number(
      //   context: context,
      //   mobile: 160,
      //   tablet: 160,
      //   desktop: 160,
      //   unit: Unit.px,
      // ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Icon(
            UniconsLine.location_point,
            size: Bamboo.number(
              context: context,
              mobile: 20,
              tablet: 30,
              desktop: 30,
              unit: Unit.px,
            ),
            color: isSelected ? secondaryColor : tertioColor,
          ),
          Text(
            location,
            style: TextStyle(
              color: isSelected ? secondaryColor : whiteColor,
              fontFamily: 'Product Sans',
              fontSize: textSize,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildFormationTitle({
    required double textSize,
    required bool isSelected,
    required String title,
    required BuildContext context,
  }) {
    return Container(
      margin: EdgeInsets.symmetric(
        horizontal: Bamboo.number(
          context: context,
          mobile: 5,
          tablet: 10,
          desktop: 10,
          unit: Unit.px,
        ),
      ),
      width: Bamboo.number(
        context: context,
        mobile: 100,
        tablet: 160,
        desktop: 160,
        unit: Unit.px,
      ),
      child: Text(
        title,
        style: TextStyle(
          color: isSelected ? secondaryColor : whiteColor,
          fontSize: textSize - 3,
        ),
      ),
    );
  }

  Widget _buildImagePart({
    required double imageSize,
    required bool isSelected,
    required String imgPath,
  }) {
    return Container(
      width: 100,
      height: 30,
      margin: const EdgeInsets.symmetric(
        horizontal: 20,
        vertical: 10,
      ),
      decoration: BoxDecoration(
        // borderRadius: BorderRadius.circular(15),
        // border: Border.all(
        //   color: isSelected ? secondaryColor : tertioColor,
        //   width: 5,
        // ),
        image: DecorationImage(
          image: AssetImage(imgPath),
          fit: BoxFit.scaleDown,
        ),
      ),
    );
  }
}
