import 'dart:io';

import 'package:flutter/cupertino.dart';

class User {
  String? name,
      contact,
      email,
      phone,
      address,
      course,
      school,
      result,
      syear,
      eyear;
  File? image;

  void reset() {
    name = contact = email = image =
        phone = address = course = school = result = syear = eyear = null;
  }
}

class Globals {
  List<String> skill = ["", ""];
  List<TextEditingController> controller = [
    TextEditingController(),
    TextEditingController(),
  ];
  Globals._();
  static final Globals globals = Globals._();
  User user = User();

  List<User> allUsers = [];
}
