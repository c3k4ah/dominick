// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:bamboo/bamboo.dart';
import 'package:flutter/material.dart';

import 'package:dominick/common/colors/colors.dart';
import 'package:dominick/models/project_model.dart';

import '../../../../common/utils/helpers/parsing.dart';

class MyProjectWidget extends StatelessWidget {
  const MyProjectWidget({
    Key? key,
    required this.size,
    required this.id,
    required this.projectModel,
  }) : super(key: key);
  final Size size;
  final int id;
  final ProjectModel projectModel;

  @override
  Widget build(BuildContext context) {
    double cardWidht = Bamboo.number(
      context: context,
      mobile: 200,
      tablet: 330,
      desktop: 330,
      unit: Unit.px,
    );
    return Container(
      // width: Bamboo.number(
      //   context: context,
      //   mobile: 150,
      //   tablet: 350,
      //   large: 400,
      //   desktop: 400,
      //   unit: Unit.px,
      // ),
      padding: EdgeInsets.symmetric(
        horizontal: Bamboo.number(
          context: context,
          mobile: 5,
          tablet: 10,
          desktop: 10,
          unit: Unit.px,
        ),
      ),
      child: Column(
        children: [
          Expanded(
            child: _buildProjectTopPart(
              width: cardWidht,
              context: context,
              children: [
                _buildProjectTitle(
                  context: context,
                ),
                Expanded(
                  flex: 2,
                  child: _buildProjectImage(
                    context: context,
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: _buildProjectDescription(
                    context: context,
                  ),
                ),
              ],
            ),
          ),
          _buildProjectBottomPart(
            width: cardWidht,
            context: context,
          ),
        ],
      ),
    );
  }

  Widget _buildProjectImage({required BuildContext context}) {
    return Container(
      height: size.height * .4,
      width: size.width,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        border: Border.all(
          color: whiteColor,
          width: Bamboo.number(
            context: context,
            mobile: 2,
            tablet: 5,
            desktop: 5,
            unit: Unit.px,
          ),
        ),
        image: DecorationImage(
          image: AssetImage(projectModel.urlImage),
          fit: BoxFit.cover,
        ),
      ),
    );
  }

  Widget _buildProjectDescription({
    required BuildContext context,
  }) {
    return Container(
      width: size.width,
      margin: const EdgeInsets.symmetric(vertical: 5),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            projectModel.title,
            style: TextStyle(
              color: whiteColor,
              fontSize: Bamboo.number(
                context: context,
                mobile: 15,
                tablet: 30,
                desktop: 30,
                unit: Unit.px,
              ),
            ),
          ),
          Text(
            projectModel.description,
            maxLines: Bamboo.number(
              context: context,
              mobile: 2,
              tablet: 3,
              desktop: 3,
              unit: Unit.px,
            ),
            overflow: TextOverflow.ellipsis,
            textAlign: TextAlign.start,
            style: TextStyle(
              color: whiteColor,
              fontSize: Bamboo.number(
                context: context,
                mobile: 10,
                tablet: 15,
                desktop: 15,
                unit: Unit.px,
              ),
              fontFamily: 'Product Sans',
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildProjectTitle({required BuildContext context}) {
    return SizedBox(
      width: size.width,
      child: Text(
        projectModel.type,
        textAlign: TextAlign.start,
        overflow: TextOverflow.ellipsis,
        maxLines: 1,
        style: TextStyle(
          color: tertioColor,
          fontSize: Bamboo.number(
            context: context,
            mobile: 15,
            tablet: 20,
            desktop: 20,
            unit: Unit.px,
          ),
          fontFamily: 'Product Sans',
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }

  Widget _buildProjectTopPart(
      {required BuildContext context,
      required double width,
      required List<Widget> children}) {
    return Container(
      width: width,
      height: 350,
      padding: EdgeInsets.symmetric(
        horizontal: Bamboo.number(
          context: context,
          mobile: 10,
          tablet: 30,
          desktop: 30,
          unit: Unit.px,
        ),
        vertical: Bamboo.number(
          context: context,
          mobile: 10,
          tablet: 20,
          desktop: 20,
          unit: Unit.px,
        ),
      ),
      decoration: BoxDecoration(
        color: secondaryColor,
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(15),
          topRight: Radius.circular(15),
        ),
      ),
      child: Column(
        children: children,
      ),
    );
  }

  Widget _buildProjectBottomPart({
    required double width,
    required BuildContext context,
  }) {
    return SizedBox(
      width: width,
      height: Bamboo.number(
        context: context,
        mobile: 70,
        tablet: 80,
        desktop: 80,
        unit: Unit.px,
      ),
      child: Stack(
        children: [
          SizedBox(
            width: width,
            child: Column(
              children: [
                Container(
                  height: Bamboo.number(
                    context: context,
                    mobile: 30,
                    tablet: 40,
                    desktop: 40,
                    unit: Unit.px,
                  ),
                  decoration: BoxDecoration(
                    color: secondaryColor,
                    borderRadius: const BorderRadius.only(
                      bottomLeft: Radius.circular(15),
                      bottomRight: Radius.circular(15),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 40,
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Container(
                //   padding: const EdgeInsets.all(5),
                //   decoration: BoxDecoration(
                //     color: primaryColor,
                //     borderRadius: BorderRadius.circular(8),
                //   ),
                //   child: MyCustomBtt(
                //     onTap: () {},
                //     text: 'VOIR',
                //     icon: UniconsLine.play,
                //     size: const Size(150, 60),
                //   ),
                // ),
                Container(
                  height: Bamboo.number(
                    context: context,
                    mobile: 50,
                    tablet: 70,
                    desktop: 70,
                    unit: Unit.px,
                  ),
                  width: Bamboo.number(
                    context: context,
                    mobile: 40,
                    tablet: 60,
                    desktop: 60,
                    unit: Unit.px,
                  ),
                  padding: EdgeInsets.all(
                    Bamboo.number(
                      context: context,
                      mobile: 3,
                      tablet: 5,
                      desktop: 5,
                      unit: Unit.px,
                    ),
                  ),
                  decoration: BoxDecoration(
                    color: primaryColor,
                    borderRadius: BorderRadius.circular(
                      Bamboo.number(
                        context: context,
                        mobile: 8,
                        tablet: 10,
                        desktop: 10,
                        unit: Unit.px,
                      ),
                    ),
                  ),
                  child: Container(
                    decoration: BoxDecoration(
                      color: secondaryColor,
                      borderRadius: BorderRadius.circular(
                        Bamboo.number(
                          context: context,
                          mobile: 5,
                          tablet: 10,
                          desktop: 10,
                          unit: Unit.px,
                        ),
                      ),
                    ),
                    child: Center(
                      child: Text(
                        addZero(id + 1),
                        style: TextStyle(
                          color: whiteColor,
                          fontSize: Bamboo.number(
                            context: context,
                            mobile: 15,
                            tablet: 25,
                            desktop: 25,
                            unit: Unit.px,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
