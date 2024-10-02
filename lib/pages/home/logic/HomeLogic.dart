import 'package:get/get.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';

class HomelogicController extends GetxController  {
  var bottomMenuIndex = 0.obs; // RxInt

  void changeIndex(int index) {
    bottomMenuIndex.value = index; // Update using .value
    print(bottomMenuIndex.value);
  }


}