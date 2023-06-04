// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:unicons/unicons.dart';

import 'package:dominick/common/colors/colors.dart';
import 'package:dominick/models/project_model.dart';
import 'package:dominick/pages/home/parts/widgets/button.dart';

import '../../../../common/utils/helpers/parsing.dart';

class MyProjectWidget extends StatelessWidget {
  const MyProjectWidget({
    Key? key,
    required this.size,
    required this.id,
    required this.projectModel,
  }) : super(key: key);
  final Size size;
  final int id;
  final ProjectModel projectModel;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 400,
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Column(
        children: [
          Expanded(
            child: Container(
              width: 330,
              height: 350,
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
                    height: 50,
                    width: size.width,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          projectModel.type,
                          style: TextStyle(
                            color: tertioColor,
                            fontSize: 20,
                            fontFamily: 'Product Sans',
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    height: size.height * .4,
                    width: size.width,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(
                        color: whiteColor,
                        width: 5,
                      ),
                      image: DecorationImage(
                        image: AssetImage(projectModel.urlImage),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      width: size.width,
                      margin: const EdgeInsets.symmetric(vertical: 5),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            projectModel.title,
                            style: TextStyle(
                              color: whiteColor,
                              fontSize: 30,
                            ),
                          ),
                          Text(
                            projectModel.description,
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                            style: TextStyle(
                              color: whiteColor,
                              fontSize: 15,
                              fontFamily: 'Product Sans',
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
            width: 330,
            height: 80,
            child: Stack(
              children: [
                SizedBox(
                  width: 330,
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
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 30),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
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
                      Container(
                        height: 70,
                        width: 60,
                        padding: const EdgeInsets.all(5),
                        decoration: BoxDecoration(
                          color: primaryColor,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Container(
                          decoration: BoxDecoration(
                            color: secondaryColor,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Center(
                            child: Text(
                              addZero(id + 1),
                              style: TextStyle(
                                color: whiteColor,
                                fontSize: 25,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
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
