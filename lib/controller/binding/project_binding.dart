import 'package:article/controller/controll/home_control.dart';
import 'package:get/get.dart';

class ProjectBindings implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<MyHome>(() => MyHome());
  }
}
