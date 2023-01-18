import 'dart:convert';

import 'package:apk11/geners.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class ButtomCustomWidget extends StatefulWidget {
  const ButtomCustomWidget({super.key});

  @override
  State<ButtomCustomWidget> createState() => _ButtomCustomWidgetState();
}

class _ButtomCustomWidgetState extends State<ButtomCustomWidget> {
  List genersList = [];
  Future<void> readJson() async {
    final String response = await rootBundle.loadString('assets/geners.json');
    final geners = await json.decode(response);
    final data = geners["data"];
    setState(() {
      final genersList = data["geners"];
    });
  }

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: genersList.length,
      itemBuilder: ((context, index) {
        return ListTile(
          title: Text(
            genersList[index]["name"],
            style: TextStyle(color: Colors.black),
          ),
        );
      }),
    );
  }
}
