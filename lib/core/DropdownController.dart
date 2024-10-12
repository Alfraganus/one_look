import 'package:get/get.dart';

class Dropdowncontroller extends GetxController {
  var selectedValue = ''.obs;

  Dropdowncontroller(String defaultValue) {
    selectedValue.value = defaultValue;
  }

  void changeIndex(String newValue) {
    selectedValue.value = newValue; // Update the observable value
  }
}
