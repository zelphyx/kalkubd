import 'package:get/get.dart';
import 'package:latihan_git/pagebangundatar/LuasController.dart';

class AppBindings extends Bindings {
  @override
  void dependencies() {
    // Bind your controllers, services, or dependencies here
    Get.put(LuasController());
    // Add more bindings as needed
  }
}