import 'package:flutter/material.dart';

import '../../../../common/colors/colors.dart';

class ParcoursSwitch extends StatelessWidget {
  final String text;
  final VoidCallback onTap;
  final bool isSelected;
  const ParcoursSwitch({
    super.key,
    required this.text,
    required this.onTap,
    required this.isSelected,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        width: 150,
        padding: const EdgeInsets.all(10),
        decoration: BoxDecoration(
          color: isSelected ? whiteColor : secondaryColor,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Center(
          child: Text(
            text,
            textAlign: TextAlign.right,
            style: TextStyle(
              color: !isSelected ? whiteColor : secondaryColor,
              fontSize: 20,
              fontFamily: 'Product Sans',
            ),
          ),
        ),
      ),
    );
  }
}
