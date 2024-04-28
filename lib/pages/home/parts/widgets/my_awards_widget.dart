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
              ' ${palmares.type} (${palmares.date})',
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
            child: SizedBox(
              width: double.infinity,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    palmares.description,
                    textAlign: TextAlign.justify,
                    maxLines: ResponsiveSize.number(
                      context: context,
                      mobile: 3,
                      tablet: 5,
                      mobileLarge: 5,
                      desktop: 7,
                    ).toInt(),
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(
                      color: themeColor.secondaryColor,
                      fontSize: 15,
                      fontFamily: 'Product Sans',
                      fontWeight: FontWeight.bold,
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
                if (!await launchUrl(Uri.parse(palmares.urlImage))) {
                  throw Exception('Could not launch');
                }
              },
              color: themeColor.primaryColor,
              elevation: 0,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(50),
              ),
              child: Icon(
                UniconsLine.link,
                color: themeColor.whiteColor,
                size: 25,
              ),
            ),
          )
        ],
      ),
      // child: Column(
      //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
      //   children: [
      //     Container(
      //       width: double.infinity,
      //       padding: const EdgeInsets.symmetric(horizontal: 20),
      //       child: Row(
      //         mainAxisAlignment: MainAxisAlignment.center,
      //         children: [
      //           Expanded(
      //             flex: 3,
      //             child: Text(
      //               addZero(id + 1),
      //               style: TextStyle(
      //                 color: secondaryColor,
      //                 fontSize: 40,
      //                 fontWeight: FontWeight.normal,
      //               ),
      //             ),
      //           ),
      //           SizedBox(
      //             height: 45,
      //             width: 45,
      //             child: MaterialButton(
      //               hoverColor: Colors.transparent,
      //               splashColor: Colors.transparent,
      //               onPressed: () async {
      //                 if (!await launchUrl(Uri.parse(palmares.urlImage))) {
      //                   throw Exception('Could not launch');
      //                 }
      //               },
      //               color: primaryColor,
      //               elevation: 0,
      //               shape: RoundedRectangleBorder(
      //                 borderRadius: BorderRadius.circular(50),
      //               ),
      //               child: Icon(
      //                 UniconsLine.link,
      //                 color: whiteColor,
      //                 size: 25,
      //               ),
      //             ),
      //           )
      //         ],
      //       ),
      //     ),
      //     SizedBox(
      //       child: Column(
      //         mainAxisAlignment: MainAxisAlignment.start,
      //         crossAxisAlignment: CrossAxisAlignment.start,
      //         children: [
      //           Padding(
      //             padding: const EdgeInsets.symmetric(horizontal: 50),
      //             child: Column(
      //               children: [
      //                 SizedBox(
      //                   width: 300,
      //                   child: Text(
      //                     palmares.title,
      //                     textAlign: TextAlign.center,
      //                     overflow: TextOverflow.ellipsis,
      //                     maxLines: 1,
      //                     style: TextStyle(
      //                       color: secondaryColor,
      //                       fontSize: 30,
      //                       fontWeight: FontWeight.normal,
      //                     ),
      //                   ),
      //                 ),
      //                 ListTile(
      //                   leading: Icon(
      //                     UniconsLine.trophy,
      //                     color: secondaryColor,
      //                   ),
      //                   trailing: Text(
      //                     "${palmares.rank}#",
      //                     textAlign: TextAlign.left,
      //                     style: TextStyle(
      //                       color: secondaryColor,
      //                       fontSize: 20,
      //                       fontWeight: FontWeight.normal,
      //                     ),
      //                   ),
      //                 ),
      //                 ListTile(
      //                   leading: Icon(
      //                     UniconsLine.info_circle,
      //                     color: secondaryColor,
      //                   ),
      //                   trailing: Text(
      //                     palmares.price,
      //                     style: TextStyle(
      //                       color: secondaryColor,
      //                       fontSize: 20,
      //                       fontWeight: FontWeight.normal,
      //                     ),
      //                   ),
      //                 ),
      //                 SizedBox(
      //                   width: 300,
      //                   child: Text(
      //                     palmares.type,
      //                     textAlign: TextAlign.center,
      //                     overflow: TextOverflow.ellipsis,
      //                     style: TextStyle(
      //                       color: secondaryColor,
      //                       fontSize: 30,
      //                       fontWeight: FontWeight.normal,
      //                     ),
      //                   ),
      //                 ),
      //               ],
      //             ),
      //           ),
      //         ],
      //       ),
      //     ),
      //     Expanded(
      //       child: Padding(
      //         padding: const EdgeInsets.all(8.0),
      //         child: Text(
      //           palmares.description,
      //           textAlign: TextAlign.center,
      //           maxLines: 5,
      //           overflow: TextOverflow.ellipsis,
      //           style: TextStyle(
      //             color: secondaryColor,
      //             fontSize: 15,
      //             fontFamily: 'Product Sans',
      //             fontWeight: FontWeight.bold,
      //           ),
      //         ),
      //       ),
      //     ),
      //     Text(
      //       palmares.date,
      //       style: TextStyle(
      //         color: secondaryColor,
      //         fontSize: 40,
      //         fontWeight: FontWeight.normal,
      //       ),
      //     ),
      //   ],
      // ),
    );
  }
}
