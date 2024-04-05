import 'package:animated_background/animated_background.dart';
import 'package:bamboo/foundation/foundation.dart';
import 'package:bamboo/services/responsive.dart';
import 'package:flutter/material.dart';
import 'package:unicons/unicons.dart';

import '../../../common/colors/colors.dart';

import 'widgets/button.dart';

class CoverPhotoPart extends StatefulWidget {
  const CoverPhotoPart({super.key});

  @override
  State<CoverPhotoPart> createState() => _CoverPhotoPartState();
}

class _CoverPhotoPartState extends State<CoverPhotoPart>
    with TickerProviderStateMixin {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    Size bttSize = Size(
      200,
      Bamboo.number(
        context: context,
        mobile: 40,
        desktop: 50,
        unit: Unit.px,
      ),
    );

    double textSize = Bamboo.number(
      context: context,
      mobile: 25,
      desktop: 50,
      unit: Unit.px,
    );
    double bodyheight = Bamboo.number(
      context: context,
      mobile: MediaQuery.sizeOf(context).height * .5,
      tablet: MediaQuery.sizeOf(context).height * .7,
      desktop: MediaQuery.sizeOf(context).height * .9,
      unit: Unit.px,
    );
    return Container(
      height: bodyheight,
      width: MediaQuery.sizeOf(context).width,
      margin: const EdgeInsets.only(bottom: 50),
      decoration: BoxDecoration(
        color: secondaryColor,
        image: const DecorationImage(
          image: AssetImage('/images/angry.webp'),
          fit: BoxFit.cover,
        ),
      ),
      child: AnimatedBackground(
        behaviour: RandomParticleBehaviour(
          options: const ParticleOptions(
            baseColor: Colors.white,
            spawnMinSpeed: 40,
            spawnMaxSpeed: 70,
            spawnMinRadius: 5,
            spawnMaxRadius: 10,
            particleCount: 100,
          ),
        ),
        vsync: this,
        child: Container(
          height: MediaQuery.sizeOf(context).height,
          width: MediaQuery.sizeOf(context).width,
          decoration: BoxDecoration(
            color: Colors.black.withOpacity(.2),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text(
                "Developpeur Flutter",
                textAlign: TextAlign.right,
                style: TextStyle(
                  color: tertioColor,
                  fontSize: textSize - 10,
                  shadows: const [
                    Shadow(
                      color: Colors.black,
                      blurRadius: 10,
                      offset: Offset(5, 5),
                    ),
                  ],
                ),
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'DOMINICK',
                    textAlign: TextAlign.right,
                    style: TextStyle(
                      color: whiteColor,
                      fontSize: textSize + 30,
                      shadows: const [
                        Shadow(
                          color: Colors.black,
                          blurRadius: 10,
                          offset: Offset(5, 5),
                        ),
                      ],
                    ),
                  ),
                  Text(
                    'Randriamanantena Grégoire',
                    textAlign: TextAlign.right,
                    style: TextStyle(
                      color: whiteColor,
                      fontSize: textSize,
                      shadows: const [
                        Shadow(
                          color: Colors.black,
                          blurRadius: 10,
                          offset: Offset(5, 5),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              MyCustomBtt(
                size: bttSize,
                icon: UniconsLine.cloud_download,
                text: 'Telecharger mon CV',
                textSize: 15,
                onTap: () {},
              ),
            ],
          ),
        ),
      ),
    );
  }
}
