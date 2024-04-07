import 'package:dominick/common/colors/colors.dart';
import 'package:flutter/material.dart';
import 'package:scroll_vanisher/scroll_vanisher.dart';

import '../../common/utils/sizes/sizes.dart';
import 'parts/part.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final CustomSize _size = CustomSize();
  final ScrollController _scrollController = ScrollController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: primaryColor,
      appBar: ScrollVanisher(
        controller: _scrollController,
        replacement: const SizedBox(),
        child: AppBar(
          title: const Text('Scroll Vanisher'),
        ),
      ),
      body: SizedBox(
        width: _size.width(context),
        height: _size.height(context),
        child: SingleChildScrollView(
          controller: _scrollController,
          child: Column(
            children: [
              const CoverPhotoPart(),
              // MyProjectPart(
              //   size: Size(
              //     _size.width(context),
              //     _size.height(context),
              //   ),
              // ),
              // MyParcoursPart(
              //   size: Size(
              //     _size.width(context),
              //     _size.height(context),
              //   ),
              // ),
              MyBigPart(
                size: Size(
                  _size.width(context),
                  _size.height(context),
                ),
              ),
              // AwardPart(
              //   size: Size(
              //     _size.width(context),
              //     _size.height(context),
              //   ),
              // ),
              // MyFooterPart(
              //   size: Size(
              //     _size.width(context),
              //     _size.height(context),
              //   ),
              // ),
            ],
          ),
        ),
      ),
    );
  }
}
