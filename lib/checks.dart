import 'package:flutter/material.dart';

class DataChecks extends StatefulWidget {
  const DataChecks({super.key});

  @override
  State<DataChecks> createState() => _DataChecksState();
}

class _DataChecksState extends State<DataChecks> {
  bool? check1 = false;
  @override
  Widget build(BuildContext context) {
    return Checkbox(
      activeColor: Colors.amber,
      hoverColor: Colors.amber,
      checkColor: Colors.black,
      value: check1,
      onChanged: (bool? value) {
        setState(() {
          check1 = value;
        });
      },
    );
  }
}
