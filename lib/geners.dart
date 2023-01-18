import 'package:flutter/material.dart';

class Geners {
  String? name;
  Geners(this.name);
  Geners.fromJson(Map<String, dynamic> json) {
    name = json['name'];
  }
}
