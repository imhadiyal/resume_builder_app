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
      eyear,
      jobtitle,
      company_name,
      companys_date,
      companye_date,
      certificate_name,
      platform,
      certificate_sdate,
      certificate_edate,
      achievement,
      about;

  File? image;

  void reset() {
    name = contact = email = image = phone = address = course = school =
        result = syear = eyear = syear = eyear = jobtitle = company_name =
            companys_date = companye_date = certificate_name = platform =
                certificate_sdate =
                    certificate_edate = about = achievement = null;
  }
}

class Globals {
  List<String> skill = ["", ""];
  List<TextEditingController> controller = [
    TextEditingController(),
    TextEditingController(),
  ];
  List<String> hobbie = ["", ""];
  List<TextEditingController> hobbiecontroller = [
    TextEditingController(),
    TextEditingController(),
  ];
  Globals._();
  static final Globals globals = Globals._();
  User user = User();

  List<User> allUsers = [];
}
