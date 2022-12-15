import 'package:get/get.dart';
import 'package:getx_bmi/modules/detail/detail_controller.dart';

class DetailsBinding implements Bindings{
  @override
  void dependencies() {
    Get.put(DetailController());
  }
}