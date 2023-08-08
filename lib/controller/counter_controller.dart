import 'package:get/get.dart';

class CounterController extends GetxController {
  var count = 0.obs;

  var isDark = false.obs;

  void changeTheme() => isDark.value = !isDark.value;
  void increment() => count + 1;
  void decrement() => count - 2;
}
