import 'package:dominick/common/colors/colors.dart';
import 'package:flutter/material.dart';

import '../../common/utils/sizes/sizes.dart';
import 'parts/part.dart';
import 'parts/widgets/app_bar.dart';

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
      appBar: AppBarWidget(
        controller: _scrollController,
      ),
      body: SizedBox(
        width: _size.width(context),
        height: _size.height(context),
        child: SingleChildScrollView(
          controller: _scrollController,
          child: Column(
            children: [
              const CoverPhotoPart(),
              MyProjectPart(
                size: Size(
                  _size.width(context),
                  _size.height(context),
                ),
              ),
              MyParcoursPart(
                size: Size(
                  _size.width(context),
                  _size.height(context),
                ),
              ),
              const MyBigPart(),
              AwardPart(
                size: Size(
                  _size.width(context),
                  _size.height(context),
                ),
              ),
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
      bottomNavigationBar: Container(
        height: 50,
        color: Colors.deepPurple,
        child: Center(
          child: Text(
            'width: ${MediaQuery.sizeOf(context).width} px',
            style: const TextStyle(
              color: Colors.white,
              fontSize: 16,
              fontFamily: 'Poppins',
            ),
          ),
        ),
      ),
    );
  }
}
