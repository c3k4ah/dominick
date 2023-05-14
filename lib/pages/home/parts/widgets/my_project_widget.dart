import 'package:dominick/common/colors/colors.dart';
import 'package:dominick/pages/home/parts/widgets/button.dart';
import 'package:flutter/material.dart';
import 'package:unicons/unicons.dart';

class MyProjectWidget extends StatelessWidget {
  final Size size;
  final int id;
  const MyProjectWidget({
    super.key,
    required this.size,
    required this.id,
  });

  @override
  Widget build(BuildContext context) {
    String addZero(int index) {
      String numb = index.toString();
      if (numb.length == 2) {
        return numb;
      } else if (numb.length == 1) {
        return '0$numb';
      }
      return '';
    }

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Column(
        children: [
          Expanded(
            child: Container(
              width: size.width * .25,
              padding: const EdgeInsets.symmetric(
                horizontal: 30,
                vertical: 20,
              ),
              decoration: BoxDecoration(
                color: secondaryColor,
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(15),
                  topRight: Radius.circular(15),
                ),
              ),
              child: Column(
                children: [
                  SizedBox(
                    height: 80,
                    width: size.width,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              addZero(id),
                              style: TextStyle(
                                color: whiteColor,
                                fontSize: 30,
                                fontWeight: FontWeight.w900,
                              ),
                            ),
                            Text(
                              'MY Portfolio',
                              style: TextStyle(
                                color: tertioColor,
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                        Container(
                          height: 55,
                          width: 55,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            border: Border.all(
                              color: primaryColor,
                              width: 4,
                            ),
                          ),
                          child: Center(
                            child: Icon(
                              UniconsLine.palette,
                              color: whiteColor,
                              size: 30,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    height: size.height * .45,
                    width: size.width,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(
                        color: whiteColor,
                        width: 5,
                      ),
                      image: const DecorationImage(
                        image: AssetImage('/images/sample.png'),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      width: size.width,
                      margin: const EdgeInsets.symmetric(vertical: 5),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Big Cat Project",
                            style: TextStyle(
                              color: whiteColor,
                              fontSize: 30,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(
                            "C'est un chat comme les autres mais il est juste mignon , en somme il n'est pas comme les autres chat moche !",
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                            style: TextStyle(
                              color: whiteColor,
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            width: size.width * .25,
            height: 80,
            child: Stack(
              children: [
                SizedBox(
                  width: size.width * .25,
                  child: Column(
                    children: [
                      Container(
                        height: 40,
                        decoration: BoxDecoration(
                          color: secondaryColor,
                          borderRadius: const BorderRadius.only(
                            bottomLeft: Radius.circular(15),
                            bottomRight: Radius.circular(15),
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 40,
                      ),
                    ],
                  ),
                ),
                Container(
                  margin: const EdgeInsets.symmetric(horizontal: 30),
                  padding: const EdgeInsets.all(5),
                  decoration: BoxDecoration(
                    color: primaryColor,
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: MyCustomBtt(
                    onTap: () {},
                    text: 'VOIR',
                    icon: UniconsLine.play,
                    size: const Size(150, 60),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
