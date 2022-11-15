import 'package:flutter/material.dart';
import 'package:length_converter/utility/coverter_calc.dart';

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

  // variables associated with from value
  String fromDropdownValue = 'milimeter';
  double fromValue = 0;
  var fromTextEditor = TextEditingController(text: "0.0");

  // variables associated with fresult value
  String resultDropdownValue = 'milimeter';
  double resultValue = 0;

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
              height: 10,
            ),

            // input form for from value
            DecoratedBox(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(5),
                boxShadow: <BoxShadow>[
                  BoxShadow(
                    color: Color.fromRGBO(0, 0, 0, 0.57), //shadow for button
                    blurRadius: 5,
                    offset: Offset.fromDirection(1, 4),
                  ), //blur radius of shadow
                ],
              ),
              child: Container(
                margin: EdgeInsets.only(
                  top: 10,
                  bottom: 10,
                ),
                padding: EdgeInsets.only(left: 10, right: 10),
                child: TextField(
                  controller: fromTextEditor,
                  textAlign: TextAlign.end,
                  keyboardType: TextInputType.number,
                  decoration: null, // remove the underline
                  style: TextStyle(
                    fontSize: 20,
                  ),
                ),
              ),
            ),

            SizedBox(
              height: 30,
            ),

            // dropdown for result value
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
                  value: resultDropdownValue,
                  items: _lengthUnits
                      .map<DropdownMenuItem<String>>((String value) {
                    return DropdownMenuItem<String>(
                      value: value,
                      child: Text(value),
                    );
                  }).toList(),
                  onChanged: (value) {
                    setState(() {
                      resultDropdownValue = value!;
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
              height: 10,
            ),

            // input form for result value
            // dropdown for result
            DecoratedBox(
              decoration: BoxDecoration(
                color: Color.fromRGBO(172, 172, 172, 1),
                borderRadius: BorderRadius.circular(5),
                boxShadow: <BoxShadow>[
                  BoxShadow(
                    color: Color.fromRGBO(0, 0, 0, 0.57), //shadow for button
                    blurRadius: 5,
                    offset: Offset.fromDirection(1, 4),
                  ), //blur radius of shadow
                ],
              ),
              child: Container(
                width: double.infinity,
                margin: EdgeInsets.only(
                  top: 10,
                  bottom: 10,
                ),
                padding: const EdgeInsets.only(left: 10, right: 10),
                child: Text(
                  resultValue.toString(),
                  textAlign: TextAlign.end,
                  style: TextStyle(
                    fontSize: 20,
                  ),
                ),
              ),
            ),

            SizedBox(
              height: 45,
            ),

            ElevatedButton(
              onPressed: () {
                setState(() {
                  resultValue = CoverterCalc.convert(
                      double.parse(fromTextEditor.text),
                      fromDropdownValue,
                      resultDropdownValue);
                });
              },
              child: Text(
                'Calculate',
                style: TextStyle(
                  color: Colors.black,
                ),
              ),
              style: ElevatedButton.styleFrom(
                backgroundColor: Color.fromRGBO(227, 213, 202, 1),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
