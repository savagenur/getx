import 'package:get/get.dart';
import 'package:getx/controllers/list_controller.dart';
import 'package:getx/controllers/tap_controller.dart';

Future<void> init() async {
  Get.lazyPut(() => TapController());
  Get.lazyPut(() => ListController());
}
