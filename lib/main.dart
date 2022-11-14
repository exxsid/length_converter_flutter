import 'package:flutter/material.dart';
import 'package:length_converter/converter_view.dart';

void main() => runApp(ConverterApp());

class ConverterApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Color.fromARGB(255, 237, 237, 233),
        body: Converter(),
      ),
    );
  }
}

