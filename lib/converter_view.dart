import 'package:flutter/material.dart';
import 'package:length_converter/widget/dropdown_menu.dart';

class Converter extends StatefulWidget {
  const Converter({super.key});

  @override
  State<Converter> createState() => _ConverterState();
}

class _ConverterState extends State<Converter> {
  // the value of where the from the current value that to be converted
  var _fromValue;

  void _getFromValue({String? fromValue}) {
    _fromValue = fromValue;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        // padding: EdgeInsets.all(10),
        margin: EdgeInsets.all(40),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                "CONVERTER",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 30,
                  letterSpacing: 5,
                ),
              ),

              const SizedBox(
                height: 45,
              ),

              // dropdown for from value
              DropdownMenuWidget(
                getFromValue: _getFromValue,
              ),

              Divider(),

              // TODO: study async and await and navigator

              // calculate button
              ElevatedButton(
                onPressed: () {
                  print(_fromValue);
                },
                child: Text('Press me!'),
              )
            ],
          ),
        ));
  }
}
