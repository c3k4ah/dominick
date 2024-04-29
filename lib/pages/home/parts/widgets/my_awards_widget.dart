// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:dominick/core/utils/sizes/sizes.dart';
import 'package:flutter/material.dart';
import 'package:unicons/unicons.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../../../core/theme/app_color.dart';
import '../../../../models/time_line_model.dart';

class MyAwardsCarSwipeWidget extends StatelessWidget {
  final int id;

  final TimeLineContentModel palmares;
  final Size size;
  const MyAwardsCarSwipeWidget({
    Key? key,
    required this.size,
    required this.id,
    required this.palmares,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final themeColor = Theme.of(context).extension<AppColors>()!;
    Size imageSize = Size(
      ResponsiveSize.number(
        context: context,
        mobile: 130,
        tablet: 200,
        mobileLarge: 200,
        desktop: 200,
      ),
      ResponsiveSize.number(
        context: context,
        mobile: 80,
        tablet: 120,
        mobileLarge: 120,
        desktop: 120,
      ),
    );
    return Container(
      width: size.width,
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: themeColor.whiteColor,
        borderRadius: BorderRadius.circular(15),
      ),
      child: Column(
        children: [
          SizedBox(
            width: imageSize.width,
            height: imageSize.height,
            child: Image.asset(
              palmares.urlImage,
              // fit: BoxFit.fitHeight,
              colorBlendMode: BlendMode.srcIn,
              color: themeColor.secondaryColor,
            ),
          ),
          SizedBox(
            width: double.infinity,
            child: Text(
              palmares.type,
              textAlign: TextAlign.center,
              overflow: TextOverflow.ellipsis,
              maxLines: 1,
              style: TextStyle(
                color: themeColor.secondaryColor,
                fontSize: ResponsiveSize.number(
                  context: context,
                  mobile: 20,
                  tablet: 30,
                  mobileLarge: 25,
                  desktop: 30,
                ),
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Expanded(
            child: Container(
              padding: EdgeInsets.symmetric(
                horizontal: ResponsiveSize.number(
                  context: context,
                  mobile: 10,
                  tablet: 20,
                  mobileLarge: 15,
                  desktop: 20,
                ),
              ),
              width: double.infinity,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(
                            vertical: 5,
                          ),
                          child: Divider(
                            color: themeColor.secondaryColor,
                            height: 1,
                          ),
                        ),
                        itemList(
                          context: context,
                          title: 'Place',
                          content: '${palmares.rank}#',
                        ),
                        itemList(
                          context: context,
                          title: 'Date',
                          content: palmares.date,
                        ),
                        itemList(
                          context: context,
                          title: 'Tech',
                          content: palmares.price,
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(
                            vertical: 5,
                          ),
                          child: Divider(
                            color: themeColor.secondaryColor,
                            height: 1,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Responsive(
                    mobile: const SizedBox(),
                    desktop: Text(
                      palmares.description,
                      textAlign: TextAlign.justify,
                      maxLines: ResponsiveSize.number(
                        context: context,
                        mobile: 3,
                        tablet: 3,
                        mobileLarge: 3,
                        desktop: 2,
                      ).toInt(),
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(
                        color: themeColor.secondaryColor,
                        fontSize: ResponsiveSize.number(
                          context: context,
                          mobile: 12,
                          tablet: 18,
                          mobileLarge: 15,
                          desktop: 20,
                        ),
                        fontFamily: 'Product Sans',
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            height: 45,
            width: 45,
            child: MaterialButton(
              hoverColor: Colors.transparent,
              splashColor: Colors.transparent,
              onPressed: () async {
                if (!await launchUrl(Uri.parse(palmares.urlPost))) {
                  throw Exception('Could not launch');
                }
              },
              color: themeColor.primaryColor,
              elevation: 0,
              padding: EdgeInsets.zero,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(50),
              ),
              child: Center(
                child: Icon(
                  UniconsLine.link,
                  color: themeColor.whiteColor,
                  size: 25,
                ),
              ),
            ),
          )
        ],
      ),
    );
  }

  Widget itemList({
    required BuildContext context,
    required String title,
    required String content,
  }) {
    final themeColor = Theme.of(context).extension<AppColors>()!;
    double textSize = ResponsiveSize.number(
      context: context,
      mobile: 18,
      tablet: 30,
      mobileLarge: 25,
      desktop: 30,
    );
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          '$title : ',
          style: TextStyle(
            color: themeColor.secondaryColor,
            fontSize: textSize,
            fontWeight: FontWeight.normal,
          ),
        ),
        Text(
          content,
          style: TextStyle(
            color: themeColor.secondaryColor,
            fontSize: textSize,
            fontWeight: FontWeight.normal,
          ),
        ),
      ],
    );
  }
}
