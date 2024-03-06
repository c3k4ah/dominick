import 'package:flutter/material.dart';

import '../../../common/utils/sizes/pad_margin.dart';

class CoverPhotoPart extends StatelessWidget {
  const CoverPhotoPart({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(
        horizontal: bodyPadding,
        vertical: 20,
      ),
      height: MediaQuery.sizeOf(context).height * .9,
      width: MediaQuery.sizeOf(context).width,
      decoration: BoxDecoration(
        color: Colors.red,
        borderRadius: BorderRadius.circular(20),
        // image: const DecorationImage(
        //   image: AssetImage('/images/angry.webp'),
        //   fit: BoxFit.cover,
        // ),
      ),
    );
  }
}
