import 'dart:developer';
import 'package:flutter/material.dart';
import 'package:neww/priter_services.dart';
import 'package:neww/widget/Drop.dart';
import 'package:neww/widget/Snack_Bar.dart';
import 'package:neww/widget/switch.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Printer Demo By Serag Sakr',
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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(15),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              const SizedBox(height: 2),

              // Custom_Field(
              //     hint_text: "أسم الطابعة", TEXT_controller: ipController),

              const SizedBox(height: 20),

              Custom_Drop(
                  hintText: '   الطابعة عبر  ', controller: ipController),
              //  -------------------------------------------------------------------------

              // Row(
              //   mainAxisAlignment: MainAxisAlignment.center,
              //   children: [
              //     ElevatedButton(
              //         onPressed: () {},
              //         child: Container(
              //             alignment: Alignment.center,
              //             child: const Text("usb عبر",
              //                 style: TextStyle(fontSize: 18)))),
              //     Padding(
              //       padding: const EdgeInsets.all(8.0),
              //       child: ElevatedButton(
              //         onPressed: () {},
              //         child: Container(
              //             alignment: Alignment.center,
              //             child: const Text("عبر البلوتوث ",
              //                 style: TextStyle(fontSize: 18))),
              //       ),
              //     ),

              //     ElevatedButton(
              //       onPressed: () {},
              //       child: Container(
              //           alignment: Alignment.center,
              //           child: const Text("عبر الانترنت ",
              //               style: TextStyle(fontSize: 18))),
              //     ),
              //     // SizedBox(
              //     //   width: 170,
              //     //   height: 50,
              //     //   child: Padding(
              //     //     padding: const EdgeInsets.all(8.0),
              //     //     child: TextField(
              //     //       controller: ctrl,
              //     //       decoration: const InputDecoration(
              //     //         border: OutlineInputBorder(),
              //     //         labelText: 'IP Address',
              //     //       ),
              //     //     ),
              //     //   ),
              //     // ),
              //   ],
              // ),

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
              const SizedBox(height: 40),
              ElevatedButton(
                  onPressed: () {
                    print();

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
        ),
      ),
    );
  }

  print() {
    log(ipController.text);
    printTest(ipController.text);
  }
}
