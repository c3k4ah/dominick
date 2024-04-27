import 'package:dominick/core/utils/sizes/sizes.dart';
import 'package:flutter/material.dart';
import 'package:unicons/unicons.dart';

import '../../../../core/theme/app_color.dart';
import '../../../../data/image_assets.dart';
import '../../../../data/social_media.dart';
import '../../../../models/social_media_model.dart';
import '../widgets/my_footer_widget.dart';

class FooterPartV2 extends StatelessWidget {
  const FooterPartV2({super.key});

  @override
  Widget build(BuildContext context) {
    final themeColor = Theme.of(context).extension<AppColors>()!;
    double textSize = ResponsiveSize.number(
      context: context,
      small: 10,
      mobile: 12,
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
          Expanded(
            flex: 2,
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
                  SizedBox(
                    child: Text(
                      'Mes coordonnées :',
                      style: TextStyle(
                        color: themeColor.whiteColor,
                        fontSize: ResponsiveSize.number(
                          context: context,
                          mobile: 25,
                          desktop: 40,
                          mobileLarge: 40,
                          tablet: 40,
                        ),
                        fontWeight: FontWeight.normal,
                      ),
                    ),
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
      width: MediaQuery.sizeOf(context).width * .5,
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
