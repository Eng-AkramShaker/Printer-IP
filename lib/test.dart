// ignore_for_file: prefer_const_constructors, unused_field, library_private_types_in_public_api, prefer_const_literals_to_create_immutables, non_constant_identifier_names, unused_element, unnecessary_null_comparison

import 'dart:developer';
import 'package:flutter/material.dart';
import 'package:neww/priter_services.dart';
import 'package:neww/widget/Drop.dart';
import 'package:neww/widget/switch.dart';
import 'package:neww/widget/text_Filed.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.amber,
      ),
      home: MyHomePage(),
    );
  }
}

class Animal {
  final int id;
  final String name;

  Animal({
    required this.id,
    required this.name,
  });
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  TextEditingController ctrl = TextEditingController();
  TextEditingController ipController = TextEditingController();

  bool isToggled = false;
  String? selectedValue;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text("Printer")),
      ),
      body: SingleChildScrollView(
        child: Container(
          alignment: Alignment.center,
          padding: EdgeInsets.all(20),
          child: Column(
            children: [
              Custom_Field(hint_text: "أسم الطابعة", TEXT_controller: ctrl),
              SizedBox(height: 20),

              //  -------------------------------------------------------------------------

              Custom_Drop(
                v_1: 'null',
                v_2: 'null',
                v_3: 'null',
                v_4: 'null',
                hintText: 'طراز الطابعة',
              ),
              //  -------------------------------------------------------------------------

              SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  ElevatedButton(
                      onPressed: () {},
                      child: Container(
                          alignment: Alignment.center,
                          child:
                              Text("usb عبر", style: TextStyle(fontSize: 18)))),
                  ElevatedButton(
                      onPressed: () {},
                      child: Container(
                          alignment: Alignment.center,
                          child: Text("عبر البلوتوث ",
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
              SizedBox(height: 20),
              //  -------------------------------------------------------------------------

              Custom_Drop2(
                v_1: 'null',
                v_2: 'null',
                hintText: 'حجم الورقة',
              ),
              //  -------------------------------------------------------------------------

              SizedBox(height: 20),
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
                            child: Text("طابعة  الفواتير",
                                style: TextStyle(fontSize: 18)),
                          ),
                        ],
                      ),
                      SizedBox(height: 15),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          coustom_switch(isToggled: isToggled),
                          Container(
                            alignment: Alignment.center,
                            child: Text("طابعة  الايصالات",
                                style: TextStyle(fontSize: 18)),
                          ),
                        ],
                      ),
                      SizedBox(height: 15),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          coustom_switch(isToggled: isToggled),
                          Container(
                            alignment: Alignment.center,
                            child: Text("طابعة  المستندات",
                                style: TextStyle(fontSize: 18)),
                          ),
                        ],
                      ),
                      SizedBox(height: 15),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          coustom_switch(isToggled: isToggled),
                          Container(
                            alignment: Alignment.center,
                            child: Text("طابعة  الطلبات",
                                style: TextStyle(fontSize: 18)),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 80),
              ElevatedButton(
                  onPressed: () {
                    log(ipController.text);
                    printTest(ipController.text);

                    //  Snak_Bar(context, 'تم بنجاح الطباعة');
                  },
                  child: Container(
                      alignment: Alignment.center,
                      child: Text(
                        'تأكيد',
                        style: TextStyle(fontSize: 20),
                      ))),
              SizedBox(height: 80),
            ],
          ),
        ),
      ),
    );
  }
}
