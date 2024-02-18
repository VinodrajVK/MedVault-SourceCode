import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/emergency_view_controller.dart';

class EmergencyViewView extends GetView<EmergencyViewController> {
  const EmergencyViewView({Key? key}) : super(key: key);
  final data = "Hello";
  final Color color = Colors.green;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Emergency View'),
      ),
      body: ListView(
        children: [
          const SizedBox(
            height: 10,
          ),
          Container(
            margin: const EdgeInsets.all(10),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Get.theme.colorScheme.primary,
            ),
            child: Column(
              children: [
                ListTile(
                  title: Text("UID", style: TextStyle(color: Colors.black)),
                ),
                Text(
                  '4f9635cb-5a16-48c0-9148-f7eec04c6b0f',
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 25),
                ),
                const SizedBox(
                  height: 10,
                ),
              ],
            ),
          ),
          Container(
            margin: const EdgeInsets.all(10),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Get.theme.colorScheme.primary,
            ),
            child: Column(
              children: [
                ListTile(
                  title: Text("EMT_ID", style: TextStyle(color: Colors.black)),
                ),
                Text(
                  '6bfcbfa2-bf36-41de-b9da-d3bc01cb68ce',
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 25),
                ),
                const SizedBox(
                  height: 10,
                ),
              ],
            ),
          ),
          Container(
            margin: const EdgeInsets.all(10),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Get.theme.colorScheme.primary,
            ),
            child: Column(
              children: [
                ListTile(
                  title: Text("Emergency Type",
                      style: TextStyle(color: Colors.black)),
                ),
                Text(
                  'Heart Attack',
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 25),
                ),
                const SizedBox(
                  height: 10,
                ),
              ],
            ),
          ),
          Container(
            margin: const EdgeInsets.all(10),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Get.theme.colorScheme.primary,
            ),
            child: Column(
              children: [
                ListTile(
                  title: Text("Triage", style: TextStyle(color: Colors.black)),
                ),
                Container(
                  color: Colors.yellow,
                  child: const SizedBox(
                    height: 50,
                    width: 50,
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
              ],
            ),
          ),
          Container(
            margin: const EdgeInsets.all(10),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Get.theme.colorScheme.primary,
            ),
            child: Column(
              children: [
                ListTile(
                  title: Text("Description",
                      style: TextStyle(color: Colors.black)),
                ),
                Text(
                  'High Chest Pain in the left side of the chest',
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 25),
                ),
                const SizedBox(
                  height: 10,
                ),
              ],
            ),
          ),
          Container(
            margin: const EdgeInsets.all(10),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Get.theme.colorScheme.primary,
            ),
            child: Column(
              children: [
                ListTile(
                  title:
                      Text("BP Level", style: TextStyle(color: Colors.black)),
                ),
                Text(
                  '100/60',
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 25),
                ),
                const SizedBox(
                  height: 10,
                ),
              ],
            ),
          ),
          Container(
            margin: const EdgeInsets.all(10),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Get.theme.colorScheme.primary,
            ),
            child: Column(
              children: [
                ListTile(
                  title: Text("sPO2", style: TextStyle(color: Colors.black)),
                ),
                Text(
                  '98',
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 25),
                ),
                const SizedBox(
                  height: 10,
                ),
              ],
            ),
          ),
          Container(
            margin: const EdgeInsets.all(10),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Get.theme.colorScheme.primary,
            ),
            child: Column(
              children: [
                ListTile(
                  title:
                      Text("Pulse Rate", style: TextStyle(color: Colors.black)),
                ),
                Text(
                  '60',
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 25),
                ),
                const SizedBox(
                  height: 10,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
