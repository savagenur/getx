import 'package:get/get.dart';

class ListController extends GetxController {
  RxList _list = [].obs;
  List get list => _list.value;

  void setValues(int x) {
    _list.add(x);
  }
}
