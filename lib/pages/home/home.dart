import 'package:dominick/common/colors/colors.dart';
import 'package:flutter/material.dart';

import '../../common/utils/sizes/mediaquery.dart';
import 'parts/part.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final ScreenSize _size = ScreenSize();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: primaryColor,
        body: SizedBox(
          width: _size.width(context),
          height: _size.height(context),
          child: SingleChildScrollView(
            child: Column(
              children: [
                MyHeaderPart(
                  size: Size(
                    _size.width(context),
                    _size.height(context),
                  ),
                ),
                AboutMePart(
                  size: Size(
                    _size.width(context),
                    _size.height(context),
                  ),
                ),
                MyProjectPart(
                  size: Size(
                    _size.width(context),
                    _size.height(context),
                  ),
                ),
                MyPalmaresPart(
                  size: Size(
                    _size.width(context),
                    _size.height(context),
                  ),
                ),
                MyBigPart(
                  size: Size(
                    _size.width(context),
                    _size.height(context),
                  ),
                ),
                ExperiencePart(
                  size: Size(
                    _size.width(context),
                    _size.height(context),
                  ),
                ),
                MyFooterPart(
                  size: Size(
                    _size.width(context),
                    _size.height(context),
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}
