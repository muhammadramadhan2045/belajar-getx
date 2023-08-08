import 'package:belajar_getx/model/orang.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(MyApp());
}

// ignore: must_be_immutable
class MyApp extends StatelessWidget {
  MyApp({super.key});

  var orang = Orang(nama: 'Rizki', umur: 20).obs;

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
              'Nama saya adalah ${orang.value.nama} dan umur saya ${orang.value.umur} tahun',
              style: const TextStyle(
                fontSize: 27,
              ),
            ),
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            orang.update((_) {
              orang.value.nama = orang.value.nama.toString().toUpperCase();
              orang.value.umur = orang.value.umur + 1;
            });
          },
          child: const Icon(Icons.add),
        ),
      ),
    );
  }
}
