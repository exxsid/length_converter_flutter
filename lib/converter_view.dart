import 'package:flutter/material.dart';

const List<String> _lengthUnits = [
  'centimeter',
  'meter',
  'kilometer',
];

class Converter extends StatefulWidget {
  const Converter({super.key});

  @override
  State<Converter> createState() => _ConverterState();
}

class _ConverterState extends State<Converter> {
  String _fromDropdownValue = _lengthUnits.first;

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.all(10),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "CONVERTER",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 30,
                  letterSpacing: 5,
                ),
              ),

              SizedBox(
                height: 20,
              ),

              // dropdown for from value
              DropdownButton(
                value: _fromDropdownValue,
                icon: Icon(Icons.arrow_downward),
                items:
                    _lengthUnits.map<DropdownMenuItem<String>>((String value) {
                  return DropdownMenuItem<String>(
                    value: value,
                    child: Text(value),
                  );
                }).toList(),
                onChanged: (String? value) {
                  // This is called when the user selects an item.
                  setState(() {
                    _fromDropdownValue = value!;
                  });
                },
              ),
            ],
          ),
        ));
  }
}
