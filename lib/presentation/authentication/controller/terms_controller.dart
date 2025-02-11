import 'package:fashion/config/index/index.dart';

class CheckboxController extends GetxController {
  var isChecked = false.obs;

  void toggleCheckbox() {
    isChecked.value = !isChecked.value;
  }
}
