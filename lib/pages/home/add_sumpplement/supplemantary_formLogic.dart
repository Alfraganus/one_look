import 'package:get/get.dart';

class SupplemantaryFormlogic extends GetxController {
  var selectedValue = ''.obs;

  SupplemantaryFormlogic(selectedValueParam) {
    selectedValue.value = selectedValueParam;
  }

  void changeIndex(String newValue) {
    selectedValue.value = newValue;
  }
}
