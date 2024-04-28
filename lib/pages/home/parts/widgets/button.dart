import 'package:flutter/material.dart';

import '../../../../core/theme/app_color.dart';
import '../../../../core/utils/sizes/responsive.dart';

class MyCustomBtt extends StatelessWidget {
  final VoidCallback onTap;
  final String text;
  final IconData icon;
  final double? textSize;

  final Size size;
  const MyCustomBtt({
    super.key,
    required this.onTap,
    required this.text,
    required this.icon,
    required this.size,
    this.textSize,
  });

  @override
  Widget build(BuildContext context) {
    final themeColor = Theme.of(context).extension<AppColors>()!;
    Size sizebtt = Size(
      text.isEmpty ? 80 : 200,
      ResponsiveSize.number(
        context: context,
        mobile: 40,
        desktop: 50,
        mobileLarge: 50,
        tablet: 40,
      ),
    );
    return InkWell(
      onTap: onTap,
      child: Container(
        width: sizebtt.width,
        height: sizebtt.height,
        decoration: BoxDecoration(
          color: themeColor.whiteColor,
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
                    color: themeColor.whiteColor,
                    borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(8),
                      bottomLeft: Radius.circular(8),
                    ),
                  ),
                  child: Center(
                    child: Container(
                      height: 3,
                      color: themeColor.primaryColor,
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
                            color: themeColor.whiteColor,
                          ),
                          Container(
                            width: 13.5,
                            color: themeColor.whiteColor,
                          ),
                        ],
                      ),
                    ),
                    Container(
                      width: 30,
                      height: 30,
                      decoration: BoxDecoration(
                        color: themeColor.secondaryColor,
                        shape: BoxShape.circle,
                      ),
                      child: Center(
                        child: Icon(
                          icon,
                          color: themeColor.whiteColor,
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
                    color: themeColor.secondaryColor,
                    fontSize: textSize ?? 25,
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
