import 'package:dominick/models/social_media_model.dart';
import 'package:flutter/material.dart';
import 'package:unicons/unicons.dart';

import '../common/colors/colors.dart';

List<SMediaModel> reseauxListe = [
  SMediaModel(
    name: 'Github',
    link: 'link',
    icon: Icon(
      UniconsLine.github,
      color: whiteColor,
    ),
    bgColor: secondaryColor,
  ),
  SMediaModel(
    name: 'Facebook',
    link: 'link',
    icon: Icon(
      UniconsLine.facebook_f,
      color: whiteColor,
    ),
    bgColor: secondaryColor,
  ),
  SMediaModel(
    name: 'Youtube',
    link: 'link',
    icon: Icon(
      UniconsLine.youtube,
      color: whiteColor,
    ),
    bgColor: secondaryColor,
  ),
];
