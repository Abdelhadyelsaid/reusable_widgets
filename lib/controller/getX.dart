import 'package:get/get.dart';

class SoliderController extends GetxController {
  final selected = "First".obs;

  void setSelected(String value) {
    selected.value = value;
  }
}
