import 'package:get/get.dart';

class TapController extends GetxController {
  int _x = 0;
  int get x => _x;
  RxInt _y = 0.obs;
  RxInt get y => _y;
  RxInt _z = 0.obs;
  int get z => _z.value;

  void increaseX() {
    _x++;
    update();
  }

  void decrease() {
    _x--;
    update();
  }

  void increaseY() {
    _y++;
    update();
  }

  void totalXY() {
    _z.value = _y.value + _x;
    print(_z);
    update();
  }
}
