// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:dominick/common/utils/sizes/sizes.dart';
import 'package:flutter/material.dart';
import 'package:unicons/unicons.dart';
import 'package:url_launcher/url_launcher.dart';

import 'package:dominick/common/colors/colors.dart';

import '../../../../common/utils/helpers/parsing.dart';
import '../../../../models/time_line_model.dart';

class MyAwardsWidget extends StatelessWidget {
  final bool isHover;
  final int id;
  final TimeLineContentModel palmares;
  const MyAwardsWidget({
    Key? key,
    required this.isHover,
    required this.id,
    required this.palmares,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Color hoverColor = whiteColor;
    return Container(
      width: 300,
      margin: const EdgeInsets.symmetric(horizontal: 8),
      height: 700,
      decoration: BoxDecoration(
        color: Colors.transparent,
        border: Border.all(
          color: isHover ? whiteColor : Colors.transparent,
          width: 4,
        ),
        borderRadius: BorderRadius.circular(15),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          isHover
              ? Container(
                  width: double.infinity,
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  decoration: BoxDecoration(
                    color: whiteColor,
                    borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(10),
                      topRight: Radius.circular(10),
                    ),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Expanded(
                        flex: 3,
                        child: Text(
                          addZero(id + 1),
                          style: TextStyle(
                            color: secondaryColor,
                            fontSize: 40,
                            fontWeight: FontWeight.normal,
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
                          color: primaryColor,
                          elevation: 0,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(50),
                          ),
                          child: Icon(
                            UniconsLine.link,
                            color: whiteColor,
                            size: 25,
                          ),
                        ),
                      )
                    ],
                  ),
                )
              : const SizedBox(
                  height: 50,
                ),
          SizedBox(
            height: 300,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 50),
                  child: Column(
                    children: [
                      Container(
                        width: 200,
                        height: 80,
                        decoration: BoxDecoration(
                          color: secondaryColor,
                          // shape: BoxShape.circle,
                        ),
                        child: Image.asset(
                          palmares.urlImage,
                          // fit: BoxFit.fitHeight,

                          colorBlendMode: BlendMode.srcIn,
                          // color: hoverColor,
                        ),
                      ),
                      // SizedBox(
                      //   width: 300,
                      //   child: Text(
                      //     palmares.type,
                      //     textAlign: TextAlign.center,
                      //     overflow: TextOverflow.ellipsis,
                      //     maxLines: 1,
                      //     style: TextStyle(
                      //       color: hoverColor,
                      //       fontSize: 30,
                      //       fontWeight: FontWeight.normal,
                      //     ),
                      //   ),
                      // ),

                      // ListTile(
                      //   leading: Icon(
                      //     UniconsLine.info_circle,
                      //     color: hoverColor,
                      //   ),
                      //   trailing: Text(
                      //     palmares.price,
                      //     style: TextStyle(
                      //       color: hoverColor,
                      //       fontSize: 20,
                      //       fontWeight: FontWeight.normal,
                      //     ),
                      //   ),
                      // ),
                      const SizedBox(
                        height: 10,
                      ),
                      SizedBox(
                        width: 300,
                        child: Text(
                          palmares.title,
                          textAlign: TextAlign.center,
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(
                            color: hoverColor,
                            fontSize: 30,
                            fontWeight: FontWeight.normal,
                          ),
                        ),
                      ),
                      ListTile(
                        leading: Icon(
                          UniconsLine.trophy,
                          color: hoverColor,
                        ),
                        trailing: Text(
                          "${palmares.rank}#",
                          textAlign: TextAlign.left,
                          style: TextStyle(
                            color: hoverColor,
                            fontSize: 20,
                            fontWeight: FontWeight.normal,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  width: 300,
                  height: 100,
                  padding: const EdgeInsets.symmetric(
                    horizontal: 20,
                    vertical: 10,
                  ),
                  child: Text(
                    palmares.description,
                    textAlign: TextAlign.center,
                    maxLines: 7,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(
                      color: hoverColor,
                      fontSize: 15,
                      fontFamily: 'Product Sans',
                      fontWeight: FontWeight.normal,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Text(
            palmares.date,
            style: TextStyle(
              color: whiteColor,
              fontSize: 40,
              fontWeight: FontWeight.normal,
            ),
          ),
        ],
      ),
    );
  }
}

class MyAwardsCarSwipeWidget extends StatelessWidget {
  final int id;
  final bool? showShadow;
  final TimeLineContentModel palmares;
  final Size size;
  const MyAwardsCarSwipeWidget({
    Key? key,
    required this.size,
    required this.id,
    required this.palmares,
    this.showShadow,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
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
        color: whiteColor,
        borderRadius: BorderRadius.circular(15),
        boxShadow: (showShadow ?? true)
            ? [
                BoxShadow(
                  offset: const Offset(0, 5),
                  color: Colors.black.withOpacity(.4),
                  blurRadius: 10,
                  spreadRadius: 5,
                ),
              ]
            : [],
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
              color: secondaryColor,
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
                color: secondaryColor,
                fontSize: ResponsiveSize.number(
                  context: context,
                  mobile: 30,
                  tablet: 30,
                  mobileLarge: 25,
                  desktop: 30,
                ),
                fontFamily: 'Product Sans',
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Expanded(
            child: SizedBox(
              width: double.infinity,
              child: Column(
                children: [
                  Text(
                    palmares.description,
                    textAlign: TextAlign.justify,
                    maxLines: 5,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(
                      color: secondaryColor,
                      fontSize: 15,
                      fontFamily: 'Product Sans',
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
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
