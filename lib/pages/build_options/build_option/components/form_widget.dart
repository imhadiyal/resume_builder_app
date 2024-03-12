import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:resume_builder_app/widget/my_snakbar.dart';

import '../../../../utils/globals.dart';

Widget formWidgrt({required BuildContext context}) {
  GlobalKey<FormState> formkey = GlobalKey<FormState>();
  Size size = MediaQuery.sizeOf(context);
  return Container(
    padding: const EdgeInsets.all(10),
    margin: const EdgeInsets.all(10),
    width: double.infinity,
    decoration: const BoxDecoration(
      color: Colors.white,
    ),
    child: Form(
      key: formkey,
      child: Column(
        children: [
          TextFormField(
            decoration: const InputDecoration(
              prefixIcon: Icon(Icons.person),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.all(
                  Radius.circular(15),
                ),
              ),
              hintText: "Enter your Name",
              labelText: "Name",
            ),
            initialValue: Globals.globals.name,
            textInputAction: TextInputAction.next,
            keyboardType: TextInputType.name,
            onSaved: (val) {
              Globals.globals.name = val;
            },
            validator: (val) {
              if (val!.isEmpty) {
                return "Must Enter Name";
              } else {
                return null;
              }
            },
          ),
          SizedBox(
            height: size.height * 0.04,
          ),
          TextFormField(
            decoration: const InputDecoration(
              prefixIcon: Icon(Icons.email),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.all(
                  Radius.circular(15),
                ),
              ),
              hintText: "Enter your Email",
              labelText: "Email",
            ),
            initialValue: Globals.globals.email,
            textInputAction: TextInputAction.next,
            keyboardType: TextInputType.emailAddress,
            onSaved: (val) {
              Globals.globals.email = val;
            },
            validator: (val) {
              if (val!.isEmpty) {
                return "Must Enter Email";
              } else {
                return null;
              }
            },
          ),
          SizedBox(
            height: size.height * 0.04,
          ),
          TextFormField(
            decoration: const InputDecoration(
              prefixIcon: Icon(Icons.phone),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.all(
                  Radius.circular(15),
                ),
              ),
              hintText: "Enter your Contact Number",
              labelText: "Contact",
            ),
            initialValue: Globals.globals.phone,
            textInputAction: TextInputAction.next,
            keyboardType: TextInputType.phone,
            onSaved: (val) {
              Globals.globals.phone = val;
            },
            validator: (val) {
              if (val!.isEmpty) {
                return "Must Enter Contact Number";
              } else {
                return null;
              }
            },
          ),
          SizedBox(
            height: size.height * 0.04,
          ),
          TextFormField(
            decoration: const InputDecoration(
              prefixIcon: Icon(Icons.location_pin),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.all(
                  Radius.circular(15),
                ),
              ),
              hintText: "Enter your Address",
              labelText: "Address",
            ),
            initialValue: Globals.globals.address,
            textInputAction: TextInputAction.done,
            onSaved: (val) {
              Globals.globals.address = val;
            },
            validator: (val) {
              if (val!.isEmpty) {
                return "Must Enter Address";
              } else {
                return null;
              }
            },
          ),
          Padding(
            padding: const EdgeInsets.all(30),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: () {
                    bool validater = formkey.currentState!.validate();
                    if (validater) {
                      formkey.currentState!.save();
                    }
                    ScaffoldMessenger.of(context).showSnackBar(
                      mySnackBar(
                          content: validater
                              ? "Form Saved"
                              : "Failed to validate the form",
                          color: validater ? Colors.green : Colors.red),
                    );
                  },
                  child: const Text("Submit"),
                ),
                SizedBox(
                  width: size.width * 0.1,
                ),
                ElevatedButton(
                  onPressed: () {
                    Globals.globals.reset();
                    formkey.currentState!.reset();
                  },
                  child: const Text("Reset"),
                ),
              ],
            ),
          )
        ],
      ),
    ),
  );
}
