import 'package:get/get.dart';
import 'package:getx_bmi/modules/home/home_controller.dart';

class HomeBindings implements Bindings{
  @override
  void dependencies() {
    Get.put(HomeController());
  }
}