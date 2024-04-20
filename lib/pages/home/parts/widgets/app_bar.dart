import 'package:bamboo/bamboo.dart';
import 'package:dominick/data/data.dart';
import 'package:flutter/material.dart';
import 'package:scroll_vanisher/scroll_vanisher.dart';

import '../../../../common/colors/colors.dart';

class AppBarWidget extends StatefulWidget implements PreferredSizeWidget {
  final ScrollController controller;
  const AppBarWidget({super.key, required this.controller});

  @override
  State<AppBarWidget> createState() => _AppBarWidgetState();

  @override
  Size get preferredSize => const Size.fromHeight(60);
}

class _AppBarWidgetState extends State<AppBarWidget> {
  //preffered size of the app bar

  @override
  Widget build(BuildContext context) {
    double textSize = Bamboo.number(
      context: context,
      mobile: 25,
      desktop: 50,
      unit: Unit.px,
    );
    double bodyheight = Bamboo.number(
      context: context,
      mobile: 50,
      tablet: 100,
      desktop: 100,
      unit: Unit.px,
    );
    return ScrollVanisher(
      controller: widget.controller,
      // replacement: Container(
      //   color: secondaryColor,
      //   child: _buildAppBarChild(),
      // ),
      child: Container(
        height: bodyheight,
        color: const Color.fromARGB(255, 184, 61, 47),
        child: Row(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Image.asset(
                imageAsset.cekahLogo,
                width: 100,
              ),
            ),
            const Spacer(),
            BambooWidget(
              desktop: Row(
                children: [
                  TextButton(
                    onPressed: () {
                      widget.controller.animateTo(
                        0,
                        duration: const Duration(milliseconds: 500),
                        curve: Curves.easeInOut,
                      );
                    },
                    child: const Text(
                      'Accueil',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                      ),
                    ),
                  ),
                  TextButton(
                    onPressed: () {
                      widget.controller.animateTo(
                        MediaQuery.of(context).size.height * 0.5,
                        duration: const Duration(milliseconds: 500),
                        curve: Curves.easeInOut,
                      );
                    },
                    child: const Text(
                      'Projets',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                      ),
                    ),
                  ),
                  TextButton(
                    onPressed: () {
                      widget.controller.animateTo(
                        MediaQuery.of(context).size.height * 1.5,
                        duration: const Duration(milliseconds: 500),
                        curve: Curves.easeInOut,
                      );
                    },
                    child: const Text(
                      'Parcours',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                      ),
                    ),
                  ),
                  TextButton(
                    onPressed: () {
                      widget.controller.animateTo(
                        MediaQuery.of(context).size.height * 2.5,
                        duration: const Duration(milliseconds: 500),
                        curve: Curves.easeInOut,
                      );
                    },
                    child: const Text(
                      'Récompenses',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                      ),
                    ),
                  ),
                  TextButton(
                    onPressed: () {
                      widget.controller.animateTo(
                        MediaQuery.of(context).size.height * 3.5,
                        duration: const Duration(milliseconds: 500),
                        curve: Curves.easeInOut,
                      );
                    },
                    child: const Text(
                      'Contact',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                      ),
                    ),
                  ),
                ],
              ),
              mobile: IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.menu,
                  color: primaryColor,
                ),
              ),
            ),
            const SizedBox(width: 20),
          ],
        ),
      ),
    );
  }
}
