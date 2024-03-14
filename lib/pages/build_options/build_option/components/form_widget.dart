import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:resume_builder_app/widget/my_snakbar.dart';

import '../../../../utils/globals.dart';

Widget formWidgrt({required BuildContext context}) {
  GlobalKey<FormState> personlformkey = GlobalKey<FormState>();
  Size size = MediaQuery.sizeOf(context);
  return Container(
    padding: const EdgeInsets.all(10),
    margin: const EdgeInsets.all(10),
    width: double.infinity,
    decoration: const BoxDecoration(
      color: Colors.white,
    ),
    child: Form(
      key: personlformkey,
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
            initialValue: Globals.globals.user.name,
            textInputAction: TextInputAction.next,
            keyboardType: TextInputType.name,
            onSaved: (val) {
              Globals.globals.user.name = val;
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
            initialValue: Globals.globals.user.email,
            textInputAction: TextInputAction.next,
            keyboardType: TextInputType.emailAddress,
            onSaved: (val) {
              Globals.globals.user.email = val;
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
            initialValue: Globals.globals.user.phone,
            textInputAction: TextInputAction.next,
            keyboardType: TextInputType.phone,
            onSaved: (val) {
              Globals.globals.user.phone = val;
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
            initialValue: Globals.globals.user.address,
            textInputAction: TextInputAction.done,
            onSaved: (val) {
              Globals.globals.user.address = val;
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
                    bool validater = personlformkey.currentState!.validate();
                    if (validater) {
                      personlformkey.currentState!.save();
                    }
                    ScaffoldMessenger.of(context).showSnackBar(
                      mySnackBar(
                          content: validater
                              ? "Form Saved"
                              : "Failed to validate the form",
                          color: validater ? Colors.green : Colors.red),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blue.shade400,
                    foregroundColor: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5.0),
                    ),
                  ),
                  child: const Text("Submit"),
                ),
                SizedBox(
                  width: size.width * 0.1,
                ),
                ElevatedButton(
                  onPressed: () {
                    Globals.globals.user.reset();
                    personlformkey.currentState!.reset();
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blue.shade400,
                    foregroundColor: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5.0),
                    ),
                  ),
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
