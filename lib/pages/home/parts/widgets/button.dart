import 'package:flutter/material.dart';

import '../../../../common/colors/colors.dart';

class MyCustomBtt extends StatelessWidget {
  final VoidCallback onTap;
  final String text;
  final IconData icon;

  final Size size;
  const MyCustomBtt({
    super.key,
    required this.onTap,
    required this.text,
    required this.icon,
    required this.size,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        width: size.width,
        height: size.height,
        decoration: BoxDecoration(
          color: whiteColor,
          borderRadius: BorderRadius.circular(8),
        ),
        child: Row(
          children: [
            Stack(
              alignment: AlignmentDirectional.centerEnd,
              children: [
                Container(
                  width: 50,
                  margin: const EdgeInsets.only(right: 3),
                  decoration: BoxDecoration(
                    color: tertioColor,
                    borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(8),
                      bottomLeft: Radius.circular(8),
                    ),
                  ),
                ),
                Stack(
                  alignment: AlignmentDirectional.center,
                  children: [
                    SizedBox(
                      width: 30,
                      child: Row(
                        children: [
                          Container(
                            width: 13.5,
                            color: Colors.transparent,
                          ),
                          Container(
                            width: 3,
                            color: primaryColor,
                          ),
                          Container(
                            width: 13.5,
                            color: whiteColor,
                          ),
                        ],
                      ),
                    ),
                    Container(
                      width: 30,
                      height: 30,
                      decoration: BoxDecoration(
                        color: secondaryColor,
                        shape: BoxShape.circle,
                      ),
                      child: Center(
                        child: Icon(
                          icon,
                          color: whiteColor,
                          size: 20,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
            Expanded(
              child: Container(
                width: size.width - 50,
                color: Colors.transparent,
                padding: const EdgeInsets.symmetric(horizontal: 5),
                child: Text(
                  text,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: secondaryColor,
                    fontSize: 25,
                    fontWeight: FontWeight.w900,
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
