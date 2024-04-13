// ignore_for_file: unused_local_variable

import 'package:animated_background/animated_background.dart';
import 'package:assets_audio_player/assets_audio_player.dart';
import 'package:bamboo/bamboo.dart';

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
    assetsAudioPlayer.open(
      Audio.file("assets/audios/wellcome_audio.mp3"),
      autoStart: false,
      loopMode: LoopMode.none,
      playInBackground: PlayInBackground.disabledPause,
    );

    super.initState();
  }

  final assetsAudioPlayer = AssetsAudioPlayer();

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
      tablet: MediaQuery.sizeOf(context).height * .6,
      desktop: MediaQuery.sizeOf(context).height * .8,
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
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
              // BambooWidget(
              //   mobile: Column(
              //     mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              //     children: bttChildren(bttSize),
              //   ),
              //   tablet: Row(
              //     mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              //     children: bttChildren(bttSize),
              //   ),
              //   desktop: Row(
              //     mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              //     children: bttChildren(bttSize),
              //   ),
              //   large: Row(
              //     mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              //     children: bttChildren(bttSize),
              //   ),
              // ),
              SizedBox(
                width: double.infinity,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    _buildVerticalBoutton(),
                    _buildVerticalBoutton(),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildVerticalBoutton() {
    return Container(
      height: 150,
      width: 70,
      padding: const EdgeInsets.all(10),
      margin: const EdgeInsets.symmetric(horizontal: 15),
      color: Colors.white,
    );
  }

  List<Widget> bttChildren(Size bttSize) {
    return [
      Padding(
        padding: const EdgeInsets.all(8.0),
        child: MyCustomBtt(
          size: bttSize,
          icon: UniconsLine.cloud_download,
          text: 'Telecharger mon CV',
          textSize: 15,
          onTap: () {},
        ),
      ),
      StreamBuilder(
        stream: assetsAudioPlayer.isPlaying,
        initialData: false,
        builder: (context, snapshot) {
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: MyCustomBtt(
              size: bttSize,
              icon:
                  snapshot.data == true ? UniconsLine.pause : UniconsLine.play,
              text: 'Bref presentation',
              textSize: 15,
              onTap: () {
                assetsAudioPlayer.playOrPause();
              },
            ),
          );
        },
      ),
    ];
  }
}
