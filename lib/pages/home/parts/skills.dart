import 'package:bamboo/services/services.dart';
import 'package:flutter/material.dart';

import '../../../common/colors/colors.dart';
import '../../../common/utils/sizes/responsive.dart';
import 'widgets/icon_and_title_widet.dart';

class MyBigPart extends StatelessWidget {
  const MyBigPart({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.sizeOf(context);
    return Container(
      margin: const EdgeInsets.all(10),
      // height: ResponsiveSize.number(
      //   context: context,
      //   mobile: size.height,
      //   tablet: size.height * .7,
      //   desktop: size.height * .7,
      //   mobileLarge: size.height * .7,
      // ),
      width: MediaQuery.sizeOf(context).width,
      // color: Colors.black,
      child: SingleChildScrollView(
        child: Column(
          children: [
            const BigTitileWidget(
              title: 'Notre équipe',
              svgIcon: 'team',
            ),
            SizedBox(
              // height: size.height * 0.7,
              width: size.width,
              child: Responsive(
                mobile: Column(
                  children: List.generate(
                    profilInfos.length,
                    (index) {
                      ProfilInfo profil = profilInfos[index];
                      return Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 30),
                        child: memberProfil(
                          widgetSize: Size(size.width, 200),
                          context: context,
                          name: profil.name,
                          job: profil.job,
                          image: profil.image,
                        ),
                      );
                    },
                  ),
                ),
                tablet: Row(
                  children: List.generate(
                    profilInfos.length,
                    (index) {
                      ProfilInfo profil = profilInfos[index];
                      return Expanded(
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 5),
                          child: memberProfil(
                            widgetSize: Size(size.width, 300),
                            context: context,
                            name: profil.name,
                            job: profil.job,
                            image: profil.image,
                          ),
                        ),
                      );
                    },
                  ),
                ),
                mobileLarge: Row(
                  children: List.generate(
                    2,
                    (index) {
                      ProfilInfo profil = profilInfos[index];
                      return Expanded(
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 5),
                          child: memberProfil(
                            widgetSize: Size(size.width, 300),
                            context: context,
                            name: profil.name,
                            job: profil.job,
                            image: profil.image,
                          ),
                        ),
                      );
                    },
                  ),
                ),
                desktop: Row(
                  children: List.generate(
                    profilInfos.length,
                    (index) {
                      ProfilInfo profil = profilInfos[index];
                      return Expanded(
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 30),
                          child: memberProfil(
                            widgetSize: Size(size.width, 300),
                            context: context,
                            name: profil.name,
                            job: profil.job,
                            image: profil.image,
                          ),
                        ),
                      );
                    },
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget memberProfil({
    required String name,
    required String job,
    required String image,
    required BuildContext context,
    required Size widgetSize,
  }) {
    double imageSize = ResponsiveSize.number(
      context: context,
      mobile: 170,
      tablet: 180,
      mobileLarge: 150,
      desktop: 200,
    );
    double textSize = Bamboo.number(
      context: context,
      mobile: 20,
      tablet: 20,
      desktop: 20,
    );
    return Container(
      padding: EdgeInsets.symmetric(
        vertical: ResponsiveSize.number(
          context: context,
          mobile: 10,
          tablet: 20,
          mobileLarge: 50,
          desktop: 20,
        ),
      ),
      margin: EdgeInsets.symmetric(
        // horizontal: Bamboo.number(
        //   context: context,
        //   mobile: 5,
        //   // tablet: 20,
        //   // large: 20,
        //   // desktop: 50,
        // ),
        vertical: Bamboo.number(
          context: context,
          mobile: 5,
          tablet: 10,
          desktop: 20,
        ),
      ),
      height: widgetSize.height + (imageSize / 2),
      width: widgetSize.width,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        // color: secondaryColor,
        border: Border.all(
          color: whiteColor,
          width: Bamboo.number(
            context: context,
            mobile: 3,
            tablet: 4,
            desktop: 6,
          ),
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            height: imageSize,
            width: imageSize,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              border: Border.all(
                color: tertioColor,
                width: 6,
              ),
              image: DecorationImage(
                image: AssetImage(image),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Column(
            children: [
              const SizedBox(height: 20),
              Text(
                name,
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: textSize,
                  color: whiteColor,
                ),
              ),
              const SizedBox(height: 10),
              Text(
                job,
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: textSize - 5,
                  fontFamily: 'Product Sans',
                  color: tertioColor,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

List<ProfilInfo> profilInfos = [
  ProfilInfo(
    name: 'Dominick R.G',
    job: 'Développeur Flutter',
    image: '/images/dev_project.jpg',
  ),
  ProfilInfo(
    name: 'Grégoire Randriaamanatena',
    job: 'Chef de projet',
    image: '/images/cher_project.jpg',
  ),
  ProfilInfo(
    name: 'Cekah Greg',
    job: 'Designer',
    image: '/images/designer_project.jpeg',
  ),
];

class ProfilInfo {
  final String name;
  final String job;
  final String image;

  ProfilInfo({
    required this.name,
    required this.job,
    required this.image,
  });
}
