import 'package:dominick/common/colors/colors.dart';
import 'package:dominick/pages/home/parts/big_part.dart';
import 'package:dominick/pages/home/parts/experience.dart';
import 'package:dominick/pages/home/parts/header.dart';
import 'package:dominick/pages/home/parts/palmares.dart';
import 'package:dominick/pages/home/parts/project.dart';
import 'package:flutter/material.dart';

import '../../common/utils/sizes/mediaquery.dart';
import 'parts/about.dart';
import 'parts/footer.dart';

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
