// import 'package:dominick/core/utils/sizes/responsive.dart';
// import 'package:dominick/models/social_media_model.dart';
// import 'package:flutter/material.dart';

// import '../../../../core/colors/colors.dart';
// import '../../../../data/social_media.dart';
// import '../widgets/my_footer_widget.dart';

// class MyFooterPart extends StatefulWidget {
//   final Size size;
//   const MyFooterPart({
//     super.key,
//     required this.size,
//   });

//   @override
//   State<MyFooterPart> createState() => _MyFooterPartState();
// }

// class _MyFooterPartState extends State<MyFooterPart> {
//   int selectedId = 50;
//   @override
//   Widget build(BuildContext context) {
//     double cornerRaius = ResponsiveSize.number(
//       context: context,
//       mobile: 10,
//       tablet: 15,
//       mobileLarge: 15,
//       desktop: 15,
//     );
//     double textSize = ResponsiveSize.number(
//       context: context,
//       mobile: 10,
//       tablet: 15,
//       mobileLarge: 15,
//       desktop: 15,
//     );
//     Size cornerSize = Size(
//       ResponsiveSize.number(
//         context: context,
//         mobile: 40,
//         tablet: 100,
//         mobileLarge: 100,
//         desktop: 100,
//       ),
//       ResponsiveSize.number(
//         context: context,
//         mobile: 60,
//         tablet: 150,
//         mobileLarge: 150,
//         desktop: 150,
//       ),
//     );
//     return Container(
//       margin: const EdgeInsets.only(top: 50),
//       height: ResponsiveSize.number(
//         context: context,
//         mobile: 200,
//         tablet: widget.size.height * .6,
//         mobileLarge: widget.size.height * .6,
//         desktop: 400,
//       ),
//       width: widget.size.width,
//       child: Stack(
//         children: [
//           Container(
//             color: Colors.transparent,
//             child: Column(
//               mainAxisAlignment: MainAxisAlignment.end,
//               children: [
//                 Container(
//                   height: ResponsiveSize.number(
//                     context: context,
//                     mobile: 100,
//                     tablet: 150,
//                     mobileLarge: 150,
//                     desktop: 150,
//                   ),
//                   width: widget.size.width,
//                   color: secondaryColor,
//                   // color: Colors.purple,
//                 )
//               ],
//             ),
//           ),
//           Column(
//             children: [
//               Container(
//                 color: Colors.transparent,
//                 // color: primaryColor,
//                 height: ResponsiveSize.number(
//                   context: context,
//                   mobile: 125,
//                   tablet: 300,
//                   mobileLarge: 300,
//                   desktop: 300,
//                 ),
//                 width: widget.size.width,
//                 child: Row(
//                   crossAxisAlignment: CrossAxisAlignment.end,
//                   children: [
//                     Container(
//                       width: cornerSize.width,
//                       height: cornerSize.height,
//                       decoration: BoxDecoration(
//                         color: secondaryColor,
//                         borderRadius: BorderRadius.only(
//                           topRight: Radius.circular(cornerRaius),
//                         ),
//                       ),
//                     ),
//                     Expanded(
//                       child: Container(
//                         height: ResponsiveSize.number(
//                           context: context,
//                           mobile: 180,
//                           tablet: 280,
//                           mobileLarge: 280,
//                           desktop: 280,
//                         ),
//                         padding: EdgeInsets.all(
//                           ResponsiveSize.number(
//                             context: context,
//                             mobile: 5,
//                             tablet: 10,
//                             mobileLarge: 10,
//                             desktop: 10,
//                           ),
//                         ),
//                         decoration: BoxDecoration(
//                           color: primaryColor,
//                           // color: Colors.amber,
//                           borderRadius: BorderRadius.circular(cornerRaius + 5),
//                         ),
//                         child: Container(
//                           padding: EdgeInsets.all(
//                             ResponsiveSize.number(
//                               context: context,
//                               mobile: 20,
//                               tablet: 40,
//                               mobileLarge: 40,
//                               desktop: 40,
//                             ),
//                           ),
//                           decoration: BoxDecoration(
//                             color: secondaryColor,
//                             borderRadius:
//                                 BorderRadius.circular(cornerRaius + 5),
//                           ),
//                           child: Row(
//                             crossAxisAlignment: CrossAxisAlignment.center,
//                             mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                             children: [
//                               Responsive(
//                                 mobile: const SizedBox(),
//                                 desktop: SizedBox(
//                                   width: 300,
//                                   child: Text(
//                                     'Vous pouvez me contacter ici :',
//                                     style: TextStyle(
//                                       color: whiteColor,
//                                       fontSize: 40,
//                                       fontWeight: FontWeight.normal,
//                                     ),
//                                   ),
//                                 ),
//                               ),
//                               Container(
//                                 padding: EdgeInsets.symmetric(
//                                   horizontal: ResponsiveSize.number(
//                                     context: context,
//                                     mobile: 20,
//                                     tablet: 30,
//                                     mobileLarge: 30,
//                                     desktop: 30,
//                                   ),
//                                 ),
//                                 // height: 150,
//                                 child: Center(
//                                   child: Row(
//                                     mainAxisAlignment:
//                                         MainAxisAlignment.spaceAround,
//                                     children: List.generate(reseauxListe.length,
//                                         (index) {
//                                       SMediaModel social = reseauxListe[index];
//                                       return MyFooterWidget(
//                                         id: index,
//                                         isSelected: false,
//                                         social: social,
//                                       );
//                                     }),
//                                   ),
//                                 ),
//                               )
//                             ],
//                           ),
//                         ),
//                       ),
//                     ),
//                     Container(
//                       width: cornerSize.width,
//                       height: cornerSize.height,
//                       decoration: BoxDecoration(
//                         color: secondaryColor,
//                         borderRadius: BorderRadius.only(
//                           topLeft: Radius.circular(cornerRaius),
//                         ),
//                       ),
//                     ),
//                   ],
//                 ),
//               ),
//               Expanded(
//                 child: Container(
//                   padding: EdgeInsets.symmetric(
//                     horizontal: ResponsiveSize.number(
//                       context: context,
//                       mobile: 10,
//                       tablet: 50,
//                       mobileLarge: 50,
//                       desktop: 50,
//                     ),
//                   ),
//                   color: secondaryColor,
//                   child: Row(
//                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                     children: [
//                       Text(
//                         'Made with Flutter and Love ❤️.',
//                         style: TextStyle(
//                           color: whiteColor,
//                           fontSize: textSize,
//                           fontFamily: 'Product Sans',
//                         ),
//                       ),
//                       Text(
//                         '© ${DateTime.now().year} DOMINICK . All rights reserved.',
//                         style: TextStyle(
//                           color: whiteColor,
//                           fontSize: textSize,
//                           fontFamily: 'Product Sans',
//                         ),
//                       ),
//                     ],
//                   ),
//                 ),
//               ),
//             ],
//           ),
//         ],
//       ),
//     );
//   }
// }
