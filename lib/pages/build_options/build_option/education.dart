import 'package:flutter/material.dart';

import '../../../utils/globals.dart';
import '../../../widget/my_snakbar.dart';

class EducationPage extends StatefulWidget {
  const EducationPage({super.key});

  @override
  State<EducationPage> createState() => _EducationPageState();
}

class _EducationPageState extends State<EducationPage> {
  @override
  Widget build(BuildContext context) {
    bool? _redio;
    GlobalKey<FormState> educationformkey = GlobalKey<FormState>();
    Size size = MediaQuery.sizeOf(context);
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.blueAccent,
        title: const Text(
          "Education",
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: Container(
        margin: EdgeInsets.all(20),
        padding: EdgeInsets.all(10),
        height: size.height,
        width: size.width,
        child: Form(
          key: educationformkey,
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Degree/Course name",
                  style: TextStyle(
                      color: Colors.deepPurple.shade700,
                      fontWeight: FontWeight.bold,
                      fontSize: 15,
                      height: 2),
                ),
                TextFormField(
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(
                        Radius.circular(10),
                      ),
                    ),
                    hintText: "Enter your Degree/Course",
                  ),
                  initialValue: Globals.globals.user.course,
                  textInputAction: TextInputAction.next,
                  keyboardType: TextInputType.name,
                  onSaved: (val) {
                    Globals.globals.user.course = val;
                  },
                  validator: (val) {
                    if (val!.isEmpty) {
                      return "Must Enter Degree/Course";
                    } else {
                      return null;
                    }
                  },
                ),
                SizedBox(
                  height: size.height * 0.02,
                ),
                Text(
                  "School/College name",
                  style: TextStyle(
                      color: Colors.deepPurple.shade700,
                      fontWeight: FontWeight.bold,
                      fontSize: 15,
                      height: 2),
                ),
                TextFormField(
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(
                        Radius.circular(10),
                      ),
                    ),
                    hintText: "Enter Your School/College Name",
                  ),
                  initialValue: Globals.globals.user.school,
                  textInputAction: TextInputAction.next,
                  keyboardType: TextInputType.emailAddress,
                  onSaved: (val) {
                    Globals.globals.user.school = val;
                  },
                  validator: (val) {
                    if (val!.isEmpty) {
                      return "Must Enter School/College Name";
                    } else {
                      return null;
                    }
                  },
                ),
                SizedBox(
                  height: size.height * 0.02,
                ),
                Text(
                  "Result",
                  style: TextStyle(
                      color: Colors.deepPurple.shade700,
                      fontWeight: FontWeight.bold,
                      fontSize: 15,
                      height: 2),
                ),
                TextFormField(
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(
                        Radius.circular(10),
                      ),
                    ),
                    hintText: "Enter your Result",
                  ),
                  initialValue: Globals.globals.user.result,
                  textInputAction: TextInputAction.next,
                  keyboardType: TextInputType.number,
                  onSaved: (val) {
                    Globals.globals.user.result = val;
                  },
                  validator: (val) {
                    if (val!.isEmpty) {
                      return "Must Enter Result";
                    } else {
                      return null;
                    }
                  },
                ),
                SizedBox(
                  height: size.height * 0.02,
                ),
                Text(
                  "Start year",
                  style: TextStyle(
                      color: Colors.deepPurple.shade700,
                      fontWeight: FontWeight.bold,
                      fontSize: 15,
                      height: 2),
                ),
                TextFormField(
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(
                        Radius.circular(10),
                      ),
                    ),
                    hintText: "Enter your Start Year",
                  ),
                  initialValue: Globals.globals.user.syear,
                  textInputAction: TextInputAction.next,
                  onSaved: (val) {
                    Globals.globals.user.syear = val;
                  },
                  validator: (val) {
                    if (val!.isEmpty) {
                      return "Must Enter Start Year";
                    } else {
                      return null;
                    }
                  },
                ),
                SizedBox(
                  height: size.height * 0.02,
                ),
                Text(
                  "End year",
                  style: TextStyle(
                      color: Colors.deepPurple.shade700,
                      fontWeight: FontWeight.bold,
                      fontSize: 15,
                      height: 2),
                ),
                TextFormField(
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(
                        Radius.circular(10),
                      ),
                    ),
                    hintText: "Enter your End Year",
                  ),
                  initialValue: Globals.globals.user.eyear,
                  textInputAction: TextInputAction.done,
                  onSaved: (val) {
                    Globals.globals.user.eyear = val;
                  },
                  validator: (val) {
                    if (val!.isEmpty) {
                      return "Must Enter End Year";
                    } else {
                      return null;
                    }
                  },
                ),
                Container(
                  margin: const EdgeInsets.only(top: 10),
                  alignment: Alignment.center,
                  height: size.height * 0.1,
                  width: size.width * 0.8,
                  child: ElevatedButton.icon(
                    onPressed: () {},
                    icon: const Icon(Icons.add),
                    label: const Text("Add Page"),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.blue.shade400,
                      foregroundColor: Colors.white,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5.0),
                      ),
                    ),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(
                      height: size.height * 0.05,
                      width: size.width * 0.3,
                      child: ElevatedButton(
                        onPressed: () {
                          bool validater =
                              educationformkey.currentState!.validate();
                          if (validater) {
                            educationformkey.currentState!.save();
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
                    ),
                    const Spacer(),
                    SizedBox(
                      height: size.height * 0.05,
                      width: size.width * 0.3,
                      child: ElevatedButton(
                        onPressed: () {
                          Globals.globals.user.reset();
                          educationformkey.currentState!.reset();
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
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
