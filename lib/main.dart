import 'package:belajar_getx/controller/counter_controller.dart';
// import 'package:belajar_getx/controller/orang_controller.dart';
// import 'package:belajar_getx/model/orang.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(MyApp());
}

// ignore: must_be_immutable
class MyApp extends StatelessWidget {
  MyApp({super.key});

  final counterC = Get.put(CounterController());

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
            child: GetBuilder<CounterController>(
          builder: (controller) => Text(
            'Counter Value is ${controller.count}',
            style: const TextStyle(
              fontSize: 27,
            ),
          ),
        )),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            Get.find<CounterController>().increment();
          },
          child: const Icon(Icons.add),
        ),
      ),
    );
  }
}
