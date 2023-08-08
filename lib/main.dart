import 'package:belajar_getx/controller/orang_controller.dart';
// import 'package:belajar_getx/model/orang.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(MyApp());
}

// ignore: must_be_immutable
class MyApp extends StatelessWidget {
  MyApp({super.key});

  final orangC = Get.put(OrangController());

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Getx State Management',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Getx State Management'),
        ),
        body: Center(
          child: Obx(
            () => Text(
              'Nama saya adalah ${orangC.orang.nama} dan umur saya ${orangC.orang.umur} tahun',
              style: const TextStyle(
                fontSize: 27,
              ),
            ),
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            orangC.changeToUpper();
          },
          child: const Icon(Icons.add),
        ),
      ),
    );
  }
}
