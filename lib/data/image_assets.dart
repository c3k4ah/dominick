import 'package:flutter/foundation.dart';

final ImageAssets imageAsset = ImageAssets();

class ImageAssets {
  String directory = !(kIsWeb) ? 'assets' : '';

  //logo
  String get inonia => '$directory/logo/ibonia.png';
  String get areaTech => '$directory/logo/areaTech.png';
  String get myAgency => '$directory/logo/myagency.png';
  String get devFest => '$directory/logo/google.png';
  String get esti => '$directory/logo/esti.png';
  String get mybn => '$directory/logo/mybn.png';
  String get mhackMvola => '$directory/logo/mvola.png';
  String get zahageek => '$directory/logo/zahageek.png';
  String get iteams => '$directory/logo/iteams.png';
  //images
  String get covertPhoto1 => '$directory/images/angry.webp';
  String get covertPhoto2 => '$directory/images/sample.png';
  String get cekahLogo => '$directory/images/cekah.png';
  String get chefProject => '$directory/images/cher_project.jpg';
  String get designerProject => '$directory/images/designer_project.jpeg';
  String get devProject => '$directory/images/dev_project.jpg';
  String get dekoa => '$directory/images/dekoa.png';
  String get mozika => '$directory/images/mozika.png';
  String get rakitra => '$directory/images/rakitra.png';
  String get gfs => '$directory/images/gfs.png';
  String get buildeo => '$directory/images/buildeo.png';
  String get avg => '$directory/images/avg.png';
  //icon
  String get team => '$directory/icons/team.svg';
  String get project => '$directory/icons/project.svg';
  String get cup => '$directory/icons/cup.svg';
  String get calendar => '$directory/icons/calendar.svg';
  String get mouse => '$directory/icons/mouse_icon.svg';
}
