import 'package:get/get.dart';

class Dropdowncontroller extends GetxController {
  var selectedValue = 'One'.obs; // Observable string

  void changeIndex(String newValue) {
    selectedValue.value = newValue; // Update the observable value
  }
}
