<<<<<<< HEAD
// ignore_for_file: prefer_const_constructors, unused_field, library_private_types_in_public_api, prefer_const_literals_to_create_immutables, non_constant_identifier_names, unused_element, unnecessary_null_comparison
=======
// ignore_for_file: unused_element
>>>>>>> 8e09d1fa6a9b2447135b42c3f580248777f898c9

import 'dart:developer';
import 'package:flutter/material.dart';
import 'package:neww/priter_services.dart';
import 'package:neww/widget/Drop.dart';
<<<<<<< HEAD
import 'package:neww/widget/switch.dart';
import 'package:neww/widget/text_Filed.dart';

void main() {
  runApp(MyApp());
=======
import 'package:neww/widget/Snack_Bar.dart';
import 'package:neww/widget/switch.dart';

void main() {
  runApp(const MyApp());
>>>>>>> 8e09d1fa6a9b2447135b42c3f580248777f898c9
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

<<<<<<< HEAD
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.amber,
      ),
      home: MyHomePage(),
=======
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Printer Demo By Serag Sakr',
      navigatorKey: appNavigatorKey,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Printer Page'),
>>>>>>> 8e09d1fa6a9b2447135b42c3f580248777f898c9
    );
  }
}

class MyHomePage extends StatefulWidget {
<<<<<<< HEAD
  const MyHomePage({
    super.key,
  });
=======
  const MyHomePage({super.key, required this.title});

  final String title;
>>>>>>> 8e09d1fa6a9b2447135b42c3f580248777f898c9

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
<<<<<<< HEAD
  TextEditingController ipController = TextEditingController();
  bool isToggled = false;
  TextEditingController ctrlll = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text('print'),
=======
  final ipController = TextEditingController();

  TextEditingController ctrlll = TextEditingController();

  bool isToggled = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
>>>>>>> 8e09d1fa6a9b2447135b42c3f580248777f898c9
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
<<<<<<< HEAD
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Text(
                'Enter Printer IP Address',
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                controller: ipController,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'IP Address',
                ),
              ),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Custom_Field(hint_text: "أسم الطابعة", TEXT_controller: ctrlll),
                const SizedBox(height: 20),

                //  -------------------------------------------------------------------------

                const Custom_Drop(
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
                      _print2();

                      //  Snak_Bar(context, 'تم بنجاح الطباعة');
                    },
                    child: Container(
                        alignment: Alignment.center,
                        child: const Text(
                          'تأكيد',
                          style: TextStyle(fontSize: 20),
                        ))),
                const SizedBox(height: 80),
=======
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text(
                    'Enter Printer IP Address',
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextField(
                    controller: ipController,
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'IP Address',
                    ),
                  ),
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    // Custom_Field(
                    //     hint_text: "أسم الطابعة", TEXT_controller: ctrlll),
                    const SizedBox(height: 20),

                    //  -------------------------------------------------------------------------

                    const Custom_Drop(
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
                                  controller: ctrlll,
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

                    const Custom_Drop2(hintText: 'حجم الورقة'),
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
                          print2();

                          Snak_Bar(context, 'تم بنجاح الطباعة');
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
>>>>>>> 8e09d1fa6a9b2447135b42c3f580248777f898c9
              ],
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          print();
        },
        tooltip: 'Print',
        child: const Icon(Icons.print),
      ),
    );
  }

  void print() {
    log(ipController.text);
    printTest(ipController.text);
  }

  void print2() {
    log(ctrlll.text);
    printTest(ctrlll.text);
  }
}
