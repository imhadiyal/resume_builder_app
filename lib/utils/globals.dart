import 'dart:io';

import 'package:flutter/cupertino.dart';

class Globals {
  String? name, email, phone, address;
  File? image;
  List<String> skill = ["", ""];
  List<TextEditingController> controller = [
    TextEditingController(),
    TextEditingController(),
  ];
  Globals._();
  static final Globals globals = Globals._();
  void reset() {
    name = email = phone = address = null;
  }
}
