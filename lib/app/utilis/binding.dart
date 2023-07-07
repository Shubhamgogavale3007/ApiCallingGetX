import 'package:api_calling_getx/app/pages/api/api_controller.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_instance/src/bindings_interface.dart';

class CommonBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => ApiPageController());
  }
}