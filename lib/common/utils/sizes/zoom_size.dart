// // ignore: avoid_web_libraries_in_flutter
// import 'dart:js' as js;

// int myWidth = 1366; // 1366 is the default width of the browser
// void setBrowserZoom() {
//   Map<String, double> screenSize = getScreenSize();
//   ScreenSizeModel screenSizeModel = ScreenSizeModel.fromMap(screenSize);
//   double zoom = calculateNecessaryZoom(screenSizeModel.width);
//   if (screenSizeModel.width > myWidth) {
//     js.context.callMethod('setZoom', [zoom]);
//   }
// }

// double calculateNecessaryZoom(double width) {
//   double zoom = 1.0;
//   zoom = (width * 100) / myWidth;

//   return zoom.roundToDouble() / 100;
// }

// Map<String, double> getScreenSize() {
//   final size = js.context.callMethod('getScreenSize');
//   return {
//     'width': size['width'],
//     'height': size['height'],
//   };
// }

// class ScreenSizeModel {
//   final double width;
//   final double height;

//   ScreenSizeModel({
//     required this.width,
//     required this.height,
//   });

//   factory ScreenSizeModel.fromMap(Map<String, double> jsObject) {
//     return ScreenSizeModel(
//       width: jsObject['width'] == null ? 0.0 : jsObject['width']!.toDouble(),
//       height: jsObject['height'] == null ? 0.0 : jsObject['height']!.toDouble(),
//     );
//   }
// }

