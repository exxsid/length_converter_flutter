import 'package:flutter/material.dart';
import 'package:length_converter/widget/dropdown_menu.dart';



class Converter extends StatefulWidget {
  const Converter({super.key});

  @override
  State<Converter> createState() => _ConverterState();
}

class _ConverterState extends State<Converter> {

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
                  fontSize: 30,
                  letterSpacing: 5,
                ),
              ),

              SizedBox(
                height: 20,
              ),

              // dropdown for from value
              DropdownMenuWidget(),
            ],
          ),
        ));
  }
}
