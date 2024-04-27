// ignore_for_file: unused_local_variable

import 'package:animated_background/animated_background.dart';
// import 'package:assets_audio_player/assets_audio_player.dart';
import 'package:bamboo/bamboo.dart';
import 'package:dominick/core/utils/sizes/sizes.dart';
import 'package:dominick/data/data.dart';

import 'package:flutter/material.dart';
import 'package:unicons/unicons.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../../../core/theme/app_color.dart';
import '../widgets/button.dart';

class CoverPhotoPart extends StatefulWidget {
  const CoverPhotoPart({super.key});

  @override
  State<CoverPhotoPart> createState() => _CoverPhotoPartState();
}

class _CoverPhotoPartState extends State<CoverPhotoPart>
    with TickerProviderStateMixin {
  String cvUrl =
      'https://drive.google.com/file/d/1BGDLwpPbIzZ1NiszZzQr65tP6qGjfNeQ/view?usp=drive_link';
  @override
  void initState() {
    // assetsAudioPlayer.open(
    //   Audio.file("assets/audios/wellcome_audio.mp3"),
    //   autoStart: false,
    //   loopMode: LoopMode.none,
    //   playInBackground: PlayInBackground.disabledPause,
    // );

    super.initState();
  }

  // final assetsAudioPlayer = AssetsAudioPlayer();

  @override
  Widget build(BuildContext context) {
    final themeColor = Theme.of(context).extension<AppColors>()!;
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
      desktop: 600,
      unit: Unit.px,
    );
    return Container(
      height: bodyheight,
      width: MediaQuery.sizeOf(context).width,
      margin: const EdgeInsets.only(bottom: 50),
      decoration: BoxDecoration(
        color: themeColor.primaryColor,
        image: DecorationImage(
          image: AssetImage(imageAsset.covertPhoto1),
          colorFilter: ColorFilter.mode(
            themeColor.primaryColor ?? Colors.black,
            BlendMode.hardLight,
          ),
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
              const SizedBox(
                height: 10,
              ),
              Text(
                "Developpeur Flutter",
                textAlign: TextAlign.right,
                style: TextStyle(
                  color: themeColor.tertioColor,
                  fontSize: textSize - 5,
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
                      color: themeColor.whiteColor,
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
                      color: themeColor.whiteColor,
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
                    _buildVerticalBoutton(
                      context: context,
                      icon: UniconsLine.cloud_download,
                      onTap: () async {
                        if (!await launchUrl(Uri.parse(cvUrl))) {
                          throw Exception('Could not launch');
                        }
                      },
                    ),
                    // StreamBuilder(
                    //   stream: assetsAudioPlayer.isPlaying,
                    //   initialData: false,
                    //   builder: (context, snapshot) {
                    //     return _buildVerticalBoutton(
                    //       context: context,
                    //       icon: snapshot.data == true
                    //           ? UniconsLine.pause
                    //           : UniconsLine.play,
                    //       onTap: () async {
                    //         await assetsAudioPlayer.playOrPause();
                    //       },
                    //     );
                    //   },
                    // ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildVerticalBoutton({
    required IconData icon,
    required VoidCallback onTap,
    required BuildContext context,
  }) {
    final themeColor = Theme.of(context).extension<AppColors>()!;
    return Container(
      height: ResponsiveSize.number(
        context: context,
        mobile: 70,
        tablet: 70,
        mobileLarge: 70,
        desktop: 100,
      ),
      width: ResponsiveSize.number(
        context: context,
        mobile: 50,
        tablet: 50,
        mobileLarge: 50,
        desktop: 70,
      ),
      // padding: const EdgeInsets.all(10),
      margin: const EdgeInsets.symmetric(horizontal: 15),
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(50),
          topRight: Radius.circular(50),
        ),
      ),
      child: Column(
        children: [
          Expanded(
            child: Stack(
              alignment: AlignmentDirectional.bottomCenter,
              children: [
                Container(
                  height: ResponsiveSize.number(
                    context: context,
                    mobile: 30,
                    tablet: 30,
                    mobileLarge: 30,
                    desktop: 50,
                  ),
                  width: double.infinity,
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(50),
                      topRight: Radius.circular(50),
                    ),
                  ),
                ),
                InkWell(
                  onTap: onTap,
                  child: Container(
                    height: ResponsiveSize.number(
                      context: context,
                      mobile: 30,
                      tablet: 30,
                      mobileLarge: 30,
                      desktop: 40,
                    ),
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: themeColor.primaryColor,
                      shape: BoxShape.circle,
                    ),
                    child: Center(
                      child: Icon(
                        icon,
                        color: themeColor.whiteColor,
                        size: ResponsiveSize.number(
                          context: context,
                          mobile: 16,
                          tablet: 16,
                          mobileLarge: 16,
                          desktop: 20,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Container(
              height: double.infinity,
              width: ResponsiveSize.number(
                context: context,
                mobile: 2,
                tablet: 2,
                mobileLarge: 2,
                desktop: 3,
              ),
              color: themeColor.primaryColor,
            ),
          ),
          // Icon(
          //   UniconsLine.cloud_download,
          //   color: primaryColor,
          //   size: 30,
          // ),
          // const SizedBox(height: 10),
        ],
      ),
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
      // StreamBuilder(
      //   stream: assetsAudioPlayer.isPlaying,
      //   initialData: false,
      //   builder: (context, snapshot) {
      //     return Padding(
      //       padding: const EdgeInsets.all(8.0),
      //       child: MyCustomBtt(
      //         size: bttSize,
      //         icon:
      //             snapshot.data == true ? UniconsLine.pause : UniconsLine.play,
      //         text: 'Bref presentation',
      //         textSize: 15,
      //         onTap: () {
      //           // assetsAudioPlayer.playOrPause();
      //         },
      //       ),
      //     );
      //   },
      // ),
    ];
  }
}
