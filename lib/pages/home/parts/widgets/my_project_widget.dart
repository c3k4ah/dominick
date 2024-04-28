// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:dominick/core/utils/sizes/sizes.dart';
import 'package:flutter/material.dart';

import 'package:dominick/models/project_model.dart';

import '../../../../core/theme/app_color.dart';
import '../../../../core/utils/helpers/parsing.dart';

class MyProjectWidget extends StatelessWidget {
  const MyProjectWidget({
    Key? key,
    // required this.size,
    required this.id,
    required this.projectModel,
  }) : super(key: key);
  // final Size size;
  final int id;
  final ProjectModel projectModel;

  @override
  Widget build(BuildContext context) {
    double cardWidht = ResponsiveSize.number(
      context: context,
      mobile: 280,
      tablet: 330,
      desktop: 330,
      mobileLarge: 330,
    );
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: ResponsiveSize.number(
          context: context,
          mobile: 5,
          tablet: 10,
          desktop: 10,
          mobileLarge: 10,
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
    final themeColor = Theme.of(context).extension<AppColors>()!;
    return Container(
      height: MediaQuery.sizeOf(context).height * .4,
      width: MediaQuery.sizeOf(context).width,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        border: Border.all(
          color: themeColor.whiteColor ?? Colors.white,
          width: ResponsiveSize.number(
            context: context,
            mobile: 2,
            tablet: 5,
            desktop: 5,
            mobileLarge: 5,
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
    final themeColor = Theme.of(context).extension<AppColors>()!;
    return Container(
      width: MediaQuery.sizeOf(context).width,
      margin: const EdgeInsets.symmetric(vertical: 5),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            projectModel.title,
            style: TextStyle(
              color: themeColor.whiteColor,
              fontSize: ResponsiveSize.number(
                context: context,
                mobile: 15,
                tablet: 30,
                desktop: 30,
                mobileLarge: 30,
              ),
            ),
          ),
          Expanded(
            child: Text(
              projectModel.description,
              maxLines: ResponsiveSize.number(
                context: context,
                mobile: 3,
                tablet: 3,
                desktop: 3,
                mobileLarge: 3,
              ).toInt(),
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.start,
              style: TextStyle(
                color: themeColor.whiteColor,
                fontSize: ResponsiveSize.number(
                  context: context,
                  mobile: 10,
                  tablet: 15,
                  desktop: 15,
                  mobileLarge: 15,
                ),
                fontFamily: 'Product Sans',
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildProjectTitle({required BuildContext context}) {
    final themeColor = Theme.of(context).extension<AppColors>()!;
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 5),
      width: MediaQuery.sizeOf(context).width,
      child: Text(
        projectModel.type,
        textAlign: TextAlign.start,
        overflow: TextOverflow.ellipsis,
        maxLines: 1,
        style: TextStyle(
          color: themeColor.tertioColor,
          fontSize: ResponsiveSize.number(
            context: context,
            mobile: 15,
            tablet: 20,
            desktop: 20,
            mobileLarge: 20,
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
    final themeColor = Theme.of(context).extension<AppColors>()!;
    return Container(
      width: width,
      height: 350,
      padding: EdgeInsets.symmetric(
        horizontal: ResponsiveSize.number(
          context: context,
          mobile: 10,
          tablet: 30,
          desktop: 30,
          mobileLarge: 30,
        ),
        vertical: ResponsiveSize.number(
          context: context,
          mobile: 10,
          tablet: 20,
          desktop: 20,
          mobileLarge: 20,
        ),
      ),
      decoration: BoxDecoration(
        color: themeColor.secondaryColor,
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
    final themeColor = Theme.of(context).extension<AppColors>()!;
    return SizedBox(
      width: width,
      height: ResponsiveSize.number(
        context: context,
        mobile: 70,
        tablet: 80,
        desktop: 80,
        mobileLarge: 80,
      ),
      child: Stack(
        children: [
          SizedBox(
            width: width,
            child: Column(
              children: [
                Container(
                  height: ResponsiveSize.number(
                    context: context,
                    mobile: 30,
                    tablet: 40,
                    desktop: 40,
                    mobileLarge: 40,
                  ),
                  decoration: BoxDecoration(
                    color: themeColor.secondaryColor,
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
                  height: ResponsiveSize.number(
                    context: context,
                    mobile: 50,
                    tablet: 70,
                    desktop: 70,
                    mobileLarge: 70,
                  ),
                  width: ResponsiveSize.number(
                    context: context,
                    mobile: 40,
                    tablet: 60,
                    desktop: 60,
                    mobileLarge: 60,
                  ),
                  padding: EdgeInsets.all(
                    ResponsiveSize.number(
                      context: context,
                      mobile: 3,
                      tablet: 5,
                      desktop: 5,
                      mobileLarge: 5,
                    ),
                  ),
                  decoration: BoxDecoration(
                    color: themeColor.primaryColor,
                    borderRadius: BorderRadius.circular(
                      ResponsiveSize.number(
                        context: context,
                        mobile: 8,
                        tablet: 10,
                        desktop: 10,
                        mobileLarge: 10,
                      ),
                    ),
                  ),
                  child: Container(
                    decoration: BoxDecoration(
                      color: themeColor.secondaryColor,
                      borderRadius: BorderRadius.circular(
                        ResponsiveSize.number(
                          context: context,
                          mobile: 5,
                          tablet: 10,
                          desktop: 10,
                          mobileLarge: 10,
                        ),
                      ),
                    ),
                    child: Center(
                      child: Text(
                        addZero(id + 1),
                        style: TextStyle(
                          color: themeColor.whiteColor,
                          fontSize: ResponsiveSize.number(
                            context: context,
                            mobile: 15,
                            tablet: 25,
                            desktop: 25,
                            mobileLarge: 25,
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
