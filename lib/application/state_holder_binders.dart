import 'package:blood_donation/presentation/UI/screens/main_bottom_nav.dart';
import 'package:blood_donation/presentation/state%20holders/main_bottom_nav_controller.dart';
import 'package:get/get.dart';

class StateHolderBinders extends Bindings{
  @override
  void dependencies() {
    Get.put(MainBottomNavController());
  }

}