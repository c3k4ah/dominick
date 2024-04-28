import 'package:dominick/core/utils/sizes/sizes.dart';
import 'package:flutter/material.dart';
import 'package:unicons/unicons.dart';

import '../../../../core/theme/app_color.dart';
import '../../../../data/image_assets.dart';
import '../../../../data/social_media.dart';
import '../../../../models/social_media_model.dart';
import '../widgets/icon_and_title_widet.dart';
import '../widgets/my_footer_widget.dart';

class FooterPartV2 extends StatelessWidget {
  const FooterPartV2({super.key});

  @override
  Widget build(BuildContext context) {
    final themeColor = Theme.of(context).extension<AppColors>()!;
    double textSize = ResponsiveSize.number(
      context: context,
      // small: 15,
      mobile: 15,
      tablet: 20,
      mobileLarge: 15,
      desktop: 20,
    );
    return Container(
      margin: const EdgeInsets.only(top: 50),
      padding: EdgeInsets.all(
        ResponsiveSize.number(
          context: context,
          mobile: 10,
          tablet: 10,
          mobileLarge: 15,
          desktop: 50,
        ),
      ),
      width: MediaQuery.sizeOf(context).width,
      height: ResponsiveSize.number(
        context: context,
        small: MediaQuery.sizeOf(context).height * .3,
        mobile: MediaQuery.sizeOf(context).height * .25,
        tablet: 340,
        mobileLarge: MediaQuery.sizeOf(context).height * .6,
        desktop: 400,
      ),
      color: themeColor.secondaryColor,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Responsive(
            mobile: const SizedBox(),
            desktop: logoPart(
              context: context,
              themeColor: themeColor,
            ),
            tablet: logoPart(
              context: context,
              themeColor: themeColor,
            ),
            mobileLarge: logoPart(
              context: context,
              themeColor: themeColor,
            ),
          ),
          Expanded(
            flex: 4,
            child: Container(
              color: Colors.transparent,
              padding: EdgeInsets.symmetric(
                horizontal: ResponsiveSize.number(
                  context: context,
                  mobile: 10,
                  tablet: 20,
                  mobileLarge: 20,
                  desktop: 50,
                ),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const BigTitileWidget(
                    title: 'Mes coordonnées :',
                    svgIcon: '',
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      buildContactInfo(
                        context: context,
                        textSize: textSize,
                        icon: UniconsLine.envelope,
                        text: 'dominick.randriamanantena@gmail.com',
                      ),
                      buildContactInfo(
                        context: context,
                        textSize: textSize,
                        icon: UniconsLine.phone,
                        text: '+261 34 44 499 16',
                      ),
                      buildContactInfo(
                        context: context,
                        textSize: textSize,
                        icon: UniconsLine.map_marker,
                        text: 'Antananarivo, Madagascar',
                      ),
                    ],
                  ),
                  Center(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: List.generate(
                        reseauxListe.length,
                        (index) {
                          SMediaModel social = reseauxListe[index];
                          return MyFooterWidget(
                            id: index,
                            isSelected: false,
                            social: social,
                          );
                        },
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget logoPart({
    required BuildContext context,
    required AppColors themeColor,
  }) {
    return Expanded(
      flex: 2,
      child: Row(
        children: [
          Expanded(
            child: Container(
              // height: imageSize,
              margin: EdgeInsets.symmetric(
                horizontal: ResponsiveSize.number(
                  context: context,
                  mobile: 20,
                  tablet: 20,
                  mobileLarge: 10,
                  desktop: 30,
                ),
              ),
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(
                    imageAsset.cekahLogo,
                  ),
                  fit: BoxFit.fitWidth,
                ),
              ),
            ),
          ),
          VerticalDivider(
            color: themeColor.whiteColor,
            width: 2,
            thickness: 1,
          ),
        ],
      ),
    );
  }

  Widget buildContactInfo({
    required IconData icon,
    required String text,
    required double textSize,
    required BuildContext context,
  }) {
    final themeColor = Theme.of(context).extension<AppColors>()!;
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 5),
      // height: 50,
      width: ResponsiveSize.number(
        context: context,
        mobile: MediaQuery.sizeOf(context).width,
        tablet: MediaQuery.sizeOf(context).width * .5,
        mobileLarge: MediaQuery.sizeOf(context).height * .5,
        desktop: MediaQuery.sizeOf(context).width * .5,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Icon(
            icon,
            color: themeColor.whiteColor,
            size: textSize,
          ),
          const SizedBox(width: 10),
          Expanded(
            child: Text(
              text,
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              style: TextStyle(
                fontSize: textSize - 3,
                fontFamily: 'Product Sans',
                color: themeColor.whiteColor,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
