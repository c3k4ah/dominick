import 'package:dominick/models/social_media_model.dart';
import 'package:flutter/material.dart';

import '../../../common/colors/colors.dart';
import '../../../data/social_media.dart';
import 'widgets/my_footer_widget.dart';

class MyFooterPart extends StatefulWidget {
  final Size size;
  const MyFooterPart({
    super.key,
    required this.size,
  });

  @override
  State<MyFooterPart> createState() => _MyFooterPartState();
}

class _MyFooterPartState extends State<MyFooterPart> {
  int selectedId = 50;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 50),
      height: widget.size.height * .5,
      width: widget.size.width,
      child: Stack(
        children: [
          Container(
            color: Colors.transparent,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Container(
                  height: 150,
                  width: widget.size.width,
                  color: secondaryColor,
                )
              ],
            ),
          ),
          Column(
            children: [
              Container(
                color: Colors.transparent,
                height: 300,
                width: widget.size.width,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Container(
                      width: 100,
                      height: 150,
                      decoration: BoxDecoration(
                        color: secondaryColor,
                        borderRadius: const BorderRadius.only(
                          topRight: Radius.circular(15),
                        ),
                      ),
                    ),
                    Expanded(
                      child: Container(
                        height: 280,
                        padding: const EdgeInsets.all(10),
                        decoration: BoxDecoration(
                          color: primaryColor,
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Container(
                          padding: const EdgeInsets.all(40),
                          decoration: BoxDecoration(
                            color: secondaryColor,
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              SizedBox(
                                width: 300,
                                child: Text(
                                  'Vous pouvez me contacter ici :',
                                  style: TextStyle(
                                    color: whiteColor,
                                    fontSize: 40,
                                    fontWeight: FontWeight.normal,
                                  ),
                                ),
                              ),
                              Container(
                                padding: const EdgeInsets.symmetric(
                                  horizontal: 30,
                                ),
                                height: 150,
                                child: Center(
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceAround,
                                    children: List.generate(reseauxListe.length,
                                        (index) {
                                      SMediaModel social = reseauxListe[index];
                                      return MouseRegion(
                                        onHover: (event) {
                                          setState(() {
                                            selectedId = index;
                                          });
                                        },
                                        onExit: (event) {
                                          setState(() {
                                            selectedId = 50;
                                          });
                                        },
                                        child: GestureDetector(
                                          child: MyFooterWidget(
                                            id: index,
                                            isSelected: selectedId == index,
                                            social: social,
                                          ),
                                        ),
                                      );
                                    }),
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                    Container(
                      width: 100,
                      height: 150,
                      decoration: BoxDecoration(
                        color: secondaryColor,
                        borderRadius: const BorderRadius.only(
                          topLeft: Radius.circular(15),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                child: Container(
                  color: secondaryColor,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
