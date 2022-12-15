import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_bmi/routes/app_pages.dart';

class HomeController extends GetxController {
  var height = 0.0.obs; // boy
  var weight = 0.0.obs; // kilo
  var bmiScore = "".obs; // bmiScore
  var statusValue = ""; // durum
  var textValue = "";
  var statusColor = "".obs;
  double sonuc = 0.0;

  void bmiCalculator() {
    sonuc = weight / ((height / 100) * (height / 100));
    if (sonuc < 18.5) {
      bmiScore.value = sonuc.toString();
      statusValue = "Underweight";
      textValue = "Try to increase the weight";
      statusColor.value = "red";
    } else if (sonuc >= 18.5 && sonuc < 24.9) {
      bmiScore.value = sonuc.toString();
      statusValue = "You're healty!";
      textValue = "This value is in the normal range Keep up the good work!";
      statusColor.value = "green";
    } else if (sonuc >= 24.9 && sonuc < 29.9) {
      bmiScore.value = sonuc.toString();
      statusValue = "Overweight";
      textValue = "Do regular exercise & reduce the weight";
      statusColor.value = "red";
    } else if (sonuc >= 29.9) {
      bmiScore.value = sonuc.toString();
      statusValue = "Obesity";
      textValue = "Please work to reduce obesity";
      statusColor.value = "red";
    }
  }

  void isBMIControl() {
    if (!(weight.value > 40 && weight.value < 250)) {
      Get.dialog(
        AlertDialog(
          title: const Text('Kilo : 40 - 250 değerleri arasında olmalı'),
          actions: <Widget>[
            ElevatedButton(
              child: const Text("OK"),
              onPressed: () {
                Get.back();
              },
            ),
          ],
        ),
      );
    } else if (!(height.value > 100 && height.value < 210)) {
      Get.dialog(
        AlertDialog(
          title: const Text('Boy : 100 - 210 değerleri arasında olmalı'),
          actions: <Widget>[
            ElevatedButton(
              child: const Text("OK"),
              onPressed: () {
                Get.back();
              },
            ),
          ],
        ),
      );
    } else {
      bmiCalculator();
      Get.toNamed(Routes.DETAIL,parameters: {'bmiScore' : bmiScore.value, 'statusValue' : statusValue, 'textValue' : textValue, 'statusColor' : statusColor.value.toString()});
    }
  }
}
