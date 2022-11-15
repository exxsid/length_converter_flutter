import 'package:flutter/material.dart';

const List<String> _lengthUnits = [
  'centimeter',
  'meter',
  'kilometer',
];

class DropdownMenuWidget extends StatefulWidget {
  const DropdownMenuWidget({super.key});

  @override
  State<DropdownMenuWidget> createState() => _DropdownMenuWidgetState();
}

class _DropdownMenuWidgetState extends State<DropdownMenuWidget> {

  String dropdownValue = _lengthUnits.first;
  @override
  Widget build(BuildContext context) {
    return DecoratedBox(
      decoration: BoxDecoration(
          color: Color.fromARGB(255, 213, 189, 175),
          borderRadius: BorderRadius.circular(5),
          boxShadow: <BoxShadow>[
            BoxShadow(
              color: Color.fromRGBO(0, 0, 0, 0.57), //shadow for button
              blurRadius: 5,
              offset: Offset.fromDirection(1, 4),
            ) //blur radius of shadow
          ]),
      child: Padding(
        padding: EdgeInsets.only(left: 30, right: 30),
        child: DropdownButton(
          value: dropdownValue,
          items: _lengthUnits.map<DropdownMenuItem<String>>((String value) {
            return DropdownMenuItem<String>(
              value: value,
              child: Text(value),
            );
          }).toList(),
          onChanged: (value) {
            setState(() {
              dropdownValue = value!;
            });
          },
          isExpanded: true, //make true to take width of parent widget
          underline: Container(), //empty line
          style: TextStyle(fontSize: 18, color: Colors.black),
          dropdownColor: Color.fromARGB(255, 213, 189, 175),
          iconEnabledColor: Colors.black, //Icon color
        ),
      ),
    );
    ;
  }
}