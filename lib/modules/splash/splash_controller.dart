// import 'package:get/get.dart';
// import 'package:getx_bmi/routes/app_pages.dart';

// class SplashController extends GetxController {

//   String? bmiScore;
//   String? statusValue;
//   String? textValue;
//   String? statusColor;

//   @override
//   void onInit() {
//     bmiScore = Get.parameters['bmiScore'];
//     statusValue = Get.parameters['statusValue'];
//     textValue = Get.parameters['textValue'];
//     statusColor = Get.parameters['statusColor'];
//     super.onInit();
//   }

//   @override
//   void onReady() async {
//     await Future.delayed(const Duration(seconds: 2));
//     Get.toNamed(Routes.DETAIL, parameters: {'bmiScore' : bmiScore.toString(), 'statusValue' : statusValue.toString(), 'textValue' : textValue.toString(), 'statusColor' : statusColor.toString()});
//     super.onReady();
//   }

// }
