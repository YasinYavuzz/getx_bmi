import 'package:get/get.dart';

class DetailController extends GetxController{

  String? bmiScore;
  String? statusValue;
  String? textValue;
  String? statusColor;

  @override
  void onInit() {
    bmiScore = Get.parameters['bmiScore'];
    statusValue = Get.parameters['statusValue'];
    textValue = Get.parameters['textValue'];
    statusColor = Get.parameters['statusColor'];
    super.onInit();
  }
}