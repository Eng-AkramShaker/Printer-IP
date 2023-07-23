// ignore_for_file: prefer_const_constructors

import 'dart:developer';
import 'package:flutter/material.dart';
import 'package:neww/priter_services.dart';
import 'package:neww/widget/Drop.dart';
import 'package:neww/widget/switch.dart';
import 'package:neww/widget/text_Filed.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Printer',
      navigatorKey: appNavigatorKey,
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.amber,
      ),
      home: const MyHomePage(title: 'Printer Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final ipController = TextEditingController();

  bool isToggled = false;
  TextEditingController ctrl = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Center(child: Text('Printer'))),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Custom_Field(hint_text: "أسم الطابعة", TEXT_controller: ctrl),
            const SizedBox(height: 20),

            //  -------------------------------------------------------------------------

            const Custom_Drop(
              v_1: 'null',
              v_2: 'null',
              v_3: 'null',
              v_4: 'null',
              hintText: 'طراز الطابعة',
            ),
            //  -------------------------------------------------------------------------

            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ElevatedButton(
                    onPressed: () {},
                    child: Container(
                        alignment: Alignment.center,
                        child: const Text("usb عبر",
                            style: TextStyle(fontSize: 18)))),
                ElevatedButton(
                    onPressed: () {},
                    child: Container(
                        alignment: Alignment.center,
                        child: const Text("عبر البلوتوث ",
                            style: TextStyle(fontSize: 18)))),
                Row(
                  children: [
                    SizedBox(
                      width: 170,
                      height: 50,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: TextField(
                          controller: ipController,
                          decoration: const InputDecoration(
                            border: OutlineInputBorder(),
                            labelText: 'IP Address',
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
            const SizedBox(height: 20),
            //  -------------------------------------------------------------------------

            const Custom_Drop2(
              v_1: 'null',
              v_2: 'null',
              hintText: 'حجم الورقة',
            ),
            //  -------------------------------------------------------------------------

            const SizedBox(height: 20),
            Card(
              child: Padding(
                padding: const EdgeInsets.all(20),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        coustom_switch(isToggled: isToggled),
                        Container(
                          alignment: Alignment.center,
                          child: const Text("طابعة  الفواتير",
                              style: TextStyle(fontSize: 18)),
                        ),
                      ],
                    ),
                    const SizedBox(height: 15),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        coustom_switch(isToggled: isToggled),
                        Container(
                          alignment: Alignment.center,
                          child: const Text("طابعة  الايصالات",
                              style: TextStyle(fontSize: 18)),
                        ),
                      ],
                    ),
                    const SizedBox(height: 15),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        coustom_switch(isToggled: isToggled),
                        Container(
                          alignment: Alignment.center,
                          child: const Text("طابعة  المستندات",
                              style: TextStyle(fontSize: 18)),
                        ),
                      ],
                    ),
                    const SizedBox(height: 15),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        coustom_switch(isToggled: isToggled),
                        Container(
                          alignment: Alignment.center,
                          child: const Text("طابعة  الطلبات",
                              style: TextStyle(fontSize: 18)),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 80),
            ElevatedButton(
                onPressed: () {
                  _print();

                  //  Snak_Bar(context, 'تم بنجاح الطباعة');
                },
                child: Container(
                    alignment: Alignment.center,
                    child: const Text(
                      'تأكيد',
                      style: TextStyle(fontSize: 20),
                    ))),
            const SizedBox(height: 80),
          ],
        ),
      ),
      // ====================================================================================================
    );
  }

  void _print() {
    log(ipController.text);
    printTest(ipController.text);
  }
}
