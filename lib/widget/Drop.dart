// ignore_for_file: camel_case_types, file_names, non_constant_identifier_names

import 'package:flutter/material.dart';

// class Custom_Drop extends StatefulWidget {
//    Custom_Drop({
//     super.key,
//     selectedValue,
//     required v_1,
//     required v_2,

//   });
//    String? hintText;

//   @override
//   State<Custom_Drop> createState() => Custom_DropState();
// }

// class Custom_DropState extends State<Custom_Drop> {
//   String? selectedValue;

//   @override
//   Widget build(BuildContext context) {
//     return Form(
//         child: Column(
//       mainAxisAlignment: MainAxisAlignment.center,
//       children: [
//         DropdownButtonFormField(
//           decoration: InputDecoration(
//             filled: true,
//             hintText: widget.hintText,
//             fillColor: Colors.transparent,
//           ),
//           dropdownColor: const Color.fromARGB(255, 228, 228, 228),
//           value: selectedValue,
//           alignment: Alignment.centerRight,
//           onChanged: (String? newValue) {
//             setState(() {
//               selectedValue = newValue!;
//             });
//           },
//           items: <String>['Apple', 'Mango']
//               .map<DropdownMenuItem<String>>((String value) {
//             return DropdownMenuItem<String>(
//               value: value,
//               child: Text(
//                 value,
//               ),
//             );
//           }).toList(),
//         ),
//       ],
//     ));
//   }
// }

Widget Custome_Drop({
  required hintText,
  required selectedValue,
  required onChanged,
  required String v_1,
  required String v_2,
}) {
  List<String> dd = <String>[v_1, v_2];
  return Form(
      child: Column(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      DropdownButtonFormField(
        decoration: InputDecoration(
          filled: true,
          hintText: hintText,
          fillColor: Colors.transparent,
        ),
        dropdownColor: const Color.fromARGB(255, 228, 228, 228),
        value: selectedValue,
        alignment: Alignment.centerRight,
        onChanged: onChanged,
        items: dd.map<DropdownMenuItem<String>>((String value) {
          return DropdownMenuItem<String>(
            value: value,
            child: Text(
              value,
            ),
          );
        }).toList(),
      ),
    ],
  ));
}

// ========================================================================================================
class Custom_Drop extends StatefulWidget {
  const Custom_Drop({
    super.key,
    selectedValue,
    required this.hintText,
  });
  final String? hintText;
  @override
  State<Custom_Drop> createState() => Custom_DropState();
}

class Custom_DropState extends State<Custom_Drop> {
  String? selectedValue;

  dynamic v_1 = "MFP 135w";
  dynamic v_2 = "LBP6030B";
  dynamic v_3 = "hp 1025";
  dynamic v_4 = "vB690B";

  List<DropdownMenuItem<String>> get dropdownItems {
    List<DropdownMenuItem<String>> menuItems = [
      DropdownMenuItem(value: v_1, child: Text(v_1)),
      DropdownMenuItem(value: v_2, child: Text(v_2)),
      DropdownMenuItem(value: v_3, child: Text(v_3)),
      DropdownMenuItem(value: v_4, child: Text(v_4)),
    ];
    return menuItems;
  }

  @override
  Widget build(BuildContext context) {
    return Form(
        child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        DropdownButtonFormField(
            decoration: InputDecoration(
              filled: true,
              hintText: widget.hintText,
              fillColor: Colors.transparent,
            ),
            dropdownColor: const Color.fromARGB(255, 245, 244, 244),
            value: selectedValue,
            onChanged: (String? newValue) {
              setState(() {
                selectedValue = newValue!;
              });
            },
            items: dropdownItems),
      ],
    ));
  }
}

// ========================================================================================================
class Custom_Drop2 extends StatefulWidget {
  const Custom_Drop2({
    super.key,
    selectedValue,
    required this.hintText,
  });
  final String? hintText;
  @override
  State<Custom_Drop2> createState() => Custom_Drop2State();
}

class Custom_Drop2State extends State<Custom_Drop2> {
  String? selectedValue;

  dynamic v_1 = "mm 80";
  dynamic v_2 = "mm 85";

  List<DropdownMenuItem<String>> get dropdownItems {
    List<DropdownMenuItem<String>> menuItems = [
      DropdownMenuItem(value: v_1, child: Text(v_1)),
      DropdownMenuItem(value: v_2, child: Text(v_2)),
    ];
    return menuItems;
  }

  @override
  Widget build(BuildContext context) {
    return Form(
        child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        DropdownButtonFormField(
            decoration: InputDecoration(
              filled: true,
              hintText: widget.hintText,
              fillColor: Colors.transparent,
            ),
            dropdownColor: const Color.fromARGB(255, 245, 244, 244),
            value: selectedValue,
            onChanged: (String? newValue) {
              setState(() {
                selectedValue = newValue!;
              });
            },
            items: dropdownItems),
      ],
    ));
  }
}
