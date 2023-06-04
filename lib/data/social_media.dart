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
      size: 35,
    ),
    bgColor: Colors.black,
  ),
  SMediaModel(
    name: 'Facebook',
    link: 'link',
    icon: Icon(
      UniconsLine.facebook_f,
      color: whiteColor,
      size: 35,
    ),
    bgColor: Colors.blue.shade700,
  ),
  SMediaModel(
    name: 'Discord',
    link: 'link',
    icon: Icon(
      UniconsLine.discord,
      color: whiteColor,
      size: 35,
    ),
    bgColor: Colors.deepPurple,
  ),
  SMediaModel(
    name: 'LinkedIn',
    link: 'link',
    icon: Icon(
      UniconsLine.linkedin,
      color: whiteColor,
      size: 35,
    ),
    bgColor: Colors.blueAccent,
  ),
  SMediaModel(
    name: 'Gmail',
    link: 'link',
    icon: Icon(
      UniconsLine.google,
      color: whiteColor,
      size: 35,
    ),
    bgColor: Colors.amber.shade700,
  ),
];
