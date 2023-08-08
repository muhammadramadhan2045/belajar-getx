import 'package:belajar_getx/controller/counter_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  final controller = Get.put(CounterController());

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => MaterialApp(
        title: 'Getx State Management',
        theme: controller.isDark.value ? ThemeData.dark() : ThemeData.light(),
        home: HomePage(),
      ),
    );
  }
}

class HomePage extends StatelessWidget {
  HomePage({super.key});
  final controller = Get.find<CounterController>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Getx State Management'),
      ),
      body: Center(
        child: Obx(
          () => Text(
            'ANGKA DARI CONTROLLER ${controller.count}',
            style: const TextStyle(
              fontSize: 27,
            ),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => controller.changeTheme(),
        child: const Icon(Icons.add),
      ),
    );
  }
}
