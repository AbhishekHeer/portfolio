import 'package:get/get.dart';

class ColorsController extends GetxController {
  RxBool change = false.obs;

  void changecolor(value) {
    if (value == true) {
      change.value = true;
    } else {
      change.value = false;
    }
  }
}
