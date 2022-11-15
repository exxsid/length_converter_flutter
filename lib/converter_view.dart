import 'package:flutter/material.dart';

class Converter extends StatefulWidget {
  const Converter({super.key});

  @override
  State<Converter> createState() => _ConverterState();
}

class _ConverterState extends State<Converter> {
  List<String> _lengthUnits = [
    'milimeter',
    'centimeter',
    'meter',
    'kilometer',
  ];

  String fromDropdownValue = 'milimeter';

  @override
  Widget build(BuildContext context) {
    return Container(
        // padding: EdgeInsets.all(10),
        margin: EdgeInsets.all(40),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "CONVERTER",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 40,
                  letterSpacing: 5,
                ),
              ),

              SizedBox(
                height: 45,
              ),

              // dropdown for from value
              DecoratedBox(
                decoration: BoxDecoration(
                  color: Color.fromARGB(255, 213, 189, 175),
                  borderRadius: BorderRadius.circular(5),
                  boxShadow: <BoxShadow>[
                    BoxShadow(
                      color: Color.fromRGBO(0, 0, 0, 0.57), //shadow for button
                      blurRadius: 5,
                      offset: Offset.fromDirection(1, 4),
                    ), //blur radius of shadow
                  ],
                ),
                child: Padding(
                  padding: EdgeInsets.only(left: 30, right: 30),
                  child: DropdownButton(
                    value: fromDropdownValue,
                    items: _lengthUnits
                        .map<DropdownMenuItem<String>>((String value) {
                      return DropdownMenuItem<String>(
                        value: value,
                        child: Text(value),
                      );
                    }).toList(),
                    onChanged: (value) {
                      setState(() {
                        fromDropdownValue = value!;
                      });
                    },
                    isExpanded: true, //make true to take width of parent widget
                    underline: Container(), //empty line
                    style: TextStyle(fontSize: 18, color: Colors.black),
                    dropdownColor: Color.fromARGB(255, 213, 189, 175),
                    iconEnabledColor: Colors.black, //Icon color
                  ),
                ),
              ),

              SizedBox(
                height: 45,
              ),
            ],
          ),
        ));
  }
}
