import 'package:dominick/common/utils/cursor_behavior/widget.dart';
import 'package:flutter/material.dart';

import '../../../common/colors/colors.dart';
import '../../../common/utils/sizes/pad_margin.dart';
import 'widgets/my_parcours_widget.dart';

class MyParcoursPart extends StatefulWidget {
  final Size size;
  const MyParcoursPart({
    super.key,
    required this.size,
  });

  @override
  State<MyParcoursPart> createState() => _MyPalmaresPartState();
}

class _MyPalmaresPartState extends State<MyParcoursPart> {
  int selectedIndex = 100;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(
        horizontal: bodyPadding,
        vertical: 20,
      ),
      height: widget.size.height * .9,
      width: widget.size.width,
      child: Column(
        children: [
          Container(
            width: widget.size.width,
            height: 150,
            margin: const EdgeInsets.symmetric(vertical: 10),
            child: Column(
              children: [
                Text(
                  'Parcours',
                  textAlign: TextAlign.right,
                  style: TextStyle(
                    color: whiteColor,
                    fontSize: 50,
                  ),
                ),
                Container(
                  width: 350,
                  height: 70,
                  padding: const EdgeInsets.symmetric(vertical: 8),
                  decoration: BoxDecoration(
                    color: secondaryColor,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        width: 150,
                        padding: const EdgeInsets.all(10),
                        decoration: BoxDecoration(
                          color: whiteColor,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Center(
                          child: Text(
                            'Experiences',
                            textAlign: TextAlign.right,
                            style: TextStyle(
                              color: secondaryColor,
                              fontSize: 20,
                              fontFamily: 'Product Sans',
                            ),
                          ),
                        ),
                      ),
                      Container(
                        width: 150,
                        padding: const EdgeInsets.all(10),
                        decoration: BoxDecoration(
                          color: secondaryColor,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Center(
                          child: Text(
                            'Formations',
                            textAlign: TextAlign.right,
                            style: TextStyle(
                              color: whiteColor,
                              fontSize: 20,
                              fontFamily: 'Product Sans',
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: ScrollChild(
              child: ListView.builder(
                itemCount: 5,
                scrollDirection: Axis.vertical,
                itemBuilder: (context, index) {
                  return MouseRegion(
                    onHover: (event) {
                      setState(() {
                        selectedIndex = index;
                      });
                    },
                    onExit: (event) {
                      setState(() {
                        selectedIndex = 100;
                      });
                    },
                    child: MyPalmaresWidget(
                      isSelected: index == selectedIndex,
                      size: widget.size,
                    ),
                  );
                },
              ),
            ),
          )
        ],
      ),
    );
  }
}
