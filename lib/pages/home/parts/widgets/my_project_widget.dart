import 'package:dominick/common/colors/colors.dart';
import 'package:flutter/material.dart';

class MyProjectWidget extends StatelessWidget {
  final Size size;
  const MyProjectWidget({super.key, required this.size});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: size.width * .25,
      color: whiteColor,
      margin: const EdgeInsets.symmetric(horizontal: 10),
      child: const Placeholder(),
    );
  }
}
