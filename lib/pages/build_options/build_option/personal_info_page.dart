import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:resume_builder_app/pages/build_options/build_option/components/form_widget.dart';
import 'package:resume_builder_app/pages/build_options/build_option/components/image_picker.dart';
import 'package:resume_builder_app/utils/globals.dart';

class PersonalInfoPage extends StatefulWidget {
  const PersonalInfoPage({super.key});

  @override
  State<PersonalInfoPage> createState() => _PersonalInfoPageState();
}

bool? _pr = true;

class _PersonalInfoPageState extends State<PersonalInfoPage> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.sizeOf(context);
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.blueAccent,
        title: const Text(
          "Personal information",
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(2),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Row(
                children: [
                  GestureDetector(
                    onTap: () {
                      _pr = true;
                      setState(() {});
                    },
                    child: Container(
                      margin:
                          const EdgeInsets.only(left: 10, top: 10, bottom: 10),
                      height: size.height * 0.07,
                      width: size.width * 0.47,
                      decoration: BoxDecoration(
                        color: (_pr == false)
                            ? Colors.white10
                            : Colors.blue.shade400,
                        borderRadius: const BorderRadius.only(
                          bottomLeft: Radius.circular(10),
                          topRight: Radius.circular(10),
                        ),
                      ),
                      child: const Align(
                        alignment: Alignment.center,
                        child: Text(
                          "Contact",
                          style: TextStyle(
                            fontSize: 23,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  ),
                  const Spacer(),
                  GestureDetector(
                    onTap: () {
                      _pr = false;
                      setState(() {});
                    },
                    child: Container(
                      margin:
                          const EdgeInsets.only(right: 10, top: 10, bottom: 10),
                      height: size.height * 0.07,
                      width: size.width * 0.47,
                      decoration: BoxDecoration(
                        color: (_pr == true)
                            ? Colors.white12
                            : Colors.blue.shade400,

                        // color: Colors.blue.shade400,
                        borderRadius: const BorderRadius.only(
                          bottomRight: Radius.circular(10),
                          topLeft: Radius.circular(10),
                        ),
                      ),
                      child: const Align(
                        alignment: Alignment.center,
                        child: Text(
                          "Photo",
                          style: TextStyle(
                            fontSize: 23,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              (_pr == true)
                  ? formWidgrt(context: context)
                  : imageWidget(context: context, setState: setState)
            ],
          ),
        ),
      ),
    );
  }
}
