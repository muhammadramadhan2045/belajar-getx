import 'package:belajar_getx/model/orang.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(MyApp());
}

// ignore: must_be_immutable
class MyApp extends StatelessWidget {
  MyApp({super.key});

  var orang = Orang();

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => MaterialApp(
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
                'Nama saya adalah ${orang.nama.value}',
                style: const TextStyle(
                  fontSize: 27,
                ),
              ),
            ),
          ),
          floatingActionButton: FloatingActionButton(
            onPressed: () {
              orang.nama.value = orang.nama.value.toString().toUpperCase();
            },
            child: const Icon(Icons.add),
          ),
        ),
      ),
    );
  }
}
