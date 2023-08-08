import 'package:belajar_getx/model/orang.dart';
import 'package:get/get.dart';

class OrangController extends GetxController {
  var orang = Orang();

  void changeToUpper() {
    orang.nama.value = orang.nama.value.toString().toUpperCase();
    orang.umur.value = orang.umur.value + 1;
  }

  void changeToLower() {
    orang.nama.value = orang.nama.value.toString().toLowerCase();
    orang.umur.value = orang.umur.value - 1;
  }
}
