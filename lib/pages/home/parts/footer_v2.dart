import 'package:dominick/common/utils/sizes/sizes.dart';
import 'package:flutter/material.dart';
import 'package:unicons/unicons.dart';

import '../../../common/colors/colors.dart';
import '../../../data/image_assets.dart';
import '../../../data/social_media.dart';
import '../../../models/social_media_model.dart';
import 'widgets/my_footer_widget.dart';

class FooterPartV2 extends StatelessWidget {
  const FooterPartV2({super.key});

  @override
  Widget build(BuildContext context) {
    double textSize = ResponsiveSize.number(
      context: context,
      mobile: 10,
      tablet: 16,
      mobileLarge: 15,
      desktop: 15,
    );
    double imageSize = ResponsiveSize.number(
      context: context,
      mobile: 100,
      tablet: 200,
      mobileLarge: 200,
      desktop: 200,
    );
    return Container(
      margin: const EdgeInsets.only(top: 50),
      padding: EdgeInsets.all(ResponsiveSize.number(
        context: context,
        mobile: 10,
        tablet: 20,
        mobileLarge: 50,
        desktop: 50,
      )),
      width: MediaQuery.sizeOf(context).width,
      height: ResponsiveSize.number(
        context: context,
        mobile: 200,
        tablet: 340,
        mobileLarge: MediaQuery.sizeOf(context).height * .6,
        desktop: MediaQuery.sizeOf(context).height * .6,
      ),
      color: secondaryColor,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Expanded(
            flex: 2,
            child: Container(
              height: imageSize,
              padding: EdgeInsets.symmetric(
                horizontal: ResponsiveSize.number(
                  context: context,
                  mobile: 20,
                  tablet: 30,
                  mobileLarge: 30,
                  desktop: 30,
                ),
              ),
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(
                    imageAsset.cekahLogo,
                  ),
                  fit: BoxFit.fitHeight,
                ),
              ),
            ),
          ),
          VerticalDivider(
            color: whiteColor,
            width: 2,
            thickness: 1,
          ),
          Expanded(
            flex: 3,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                //email, tel
                Container(
                  padding: EdgeInsets.symmetric(
                    horizontal: ResponsiveSize.number(
                      context: context,
                      mobile: 10,
                      tablet: 50,
                      mobileLarge: 50,
                      desktop: 50,
                    ),
                  ),
                  color: secondaryColor,
                  child: Column(
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
                    ],
                  ),
                ),
                Container(
                  padding: EdgeInsets.symmetric(
                    horizontal: ResponsiveSize.number(
                      context: context,
                      mobile: 20,
                      tablet: 30,
                      mobileLarge: 30,
                      desktop: 30,
                    ),
                  ),
                  // height: 150,
                  child: Center(
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
                ),
              ],
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
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 5),
      height: 50,
      width: MediaQuery.sizeOf(context).width * .5,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Icon(
            icon,
            color: whiteColor,
          ),
          const SizedBox(width: 10),
          Expanded(
            child: Text(
              text,
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
              style: TextStyle(
                color: whiteColor,
                fontSize: textSize,
                fontFamily: 'Product Sans',
              ),
            ),
          ),
        ],
      ),
    );
  }
}
