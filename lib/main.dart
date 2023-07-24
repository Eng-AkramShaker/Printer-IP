import 'dart:developer';
import 'package:flutter/material.dart';
import 'package:neww/priter_services.dart';
import 'package:neww/widget/Snack_Bar.dart';

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
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
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

  final ctrl = TextEditingController();

  bool isToggled = false;

  String? selectedValue;

  dynamic v_1 = "Internet";
  dynamic v_2 = "Bluetooth";
  dynamic v_3 = "USB";

  List<DropdownMenuItem<String>> get dropdownItems {
    List<DropdownMenuItem<String>> menuItems = [
      DropdownMenuItem(value: v_1, child: Text(v_1)),
      DropdownMenuItem(value: v_2, child: Text(v_2)),
      DropdownMenuItem(value: v_3, child: Text(v_3)),
    ];
    return menuItems;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
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
          const SizedBox(height: 20),
          // -------------------------------------------------------------------------------------------

          Form(
              child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              DropdownButtonFormField(
                  decoration: const InputDecoration(
                    filled: true,
                    hintText: "IPPPPP",
                    fillColor: Colors.transparent,
                  ),
                  dropdownColor: const Color.fromARGB(255, 245, 244, 244),
                  value: selectedValue,
                  onChanged: (String? newValue) {
                    setState(() {
                      selectedValue = newValue!;
                      print(newValue);
                    });
                  },
                  items: dropdownItems),

              // `````````````````````````````````````````````````````````````````

              selectedValue == 'Internet'
                  ? TextField(
                      controller: ctrl,
                      decoration: const InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: 'IP Address',
                      ))
                  : const Text(''),

              // `````````````````````````````````````````````````````````````````

              selectedValue == 'Bluetooth'
                  ? const SizedBox(
                      height: 80,
                      width: 300,
                      child: Center(child: RefreshProgressIndicator()),
                    )
                  : const Text(''),

              // `````````````````````````````````````````````````````````````````

              selectedValue == 'USB'
                  ? const SizedBox(
                      height: 80,
                      width: 300,
                      child: Center(child: RefreshProgressIndicator()),
                    )
                  : const Text(''),
            ],
          )),

          // --------------------------------------------------------------------------------------------
          ElevatedButton(
              onPressed: () {
                _print2();
                Snak_Bar(context, 'تم بنجاح الطباعة');
              },
              child: Container(
                  alignment: Alignment.center,
                  child: const Text(
                    '    تأكيد',
                    style: TextStyle(fontSize: 20),
                  ))),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          _print();
        },
        tooltip: 'Print',
        child: const Icon(Icons.print),
      ),
    );
  }

  void _print() {
    log(ipController.text);
    printTest(ipController.text);
  }

  void _print2() {
    log(ctrl.text);
    printTest(ctrl.text);
  }
}
