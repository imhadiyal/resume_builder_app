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
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: Align(
          alignment: Alignment.topCenter,
          child: Column(
            children: [
              SizedBox(
                height: size.height * 0.07,
                width: size.width * 0.6,
                child: ElevatedButton.icon(
                  onPressed: () {
                    showDialog(
                      context: context,
                      builder: (context) => Center(
                        child: SizedBox(
                          width: double.infinity,
                          child: Dialog(
                            shape: const RoundedRectangleBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(10.0))),
                            insetPadding: const EdgeInsets.all(10),
                            shadowColor: Colors.blue,
                            elevation: 5,
                            child: Padding(
                              padding: const EdgeInsets.all(20),
                              child: Form(
                                key: educationformkey,
                                child: SingleChildScrollView(
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
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
                                          hintText:
                                              "Enter Your School/College Name",
                                        ),
                                        initialValue:
                                            Globals.globals.user.school,
                                        textInputAction: TextInputAction.next,
                                        keyboardType:
                                            TextInputType.emailAddress,
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
                                        height: size.height * 0.01,
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
                                        initialValue:
                                            Globals.globals.user.result,
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
                                        height: size.height * 0.01,
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
                                        keyboardType: TextInputType.number,
                                        initialValue:
                                            Globals.globals.user.syear,
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
                                        height: size.height * 0.01,
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
                                        keyboardType: TextInputType.number,
                                        initialValue:
                                            Globals.globals.user.eyear,
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
                                      SizedBox(
                                        height: size.height * 0.02,
                                      ),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.end,
                                        children: [
                                          SizedBox(
                                            height: size.height * 0.05,
                                            width: size.width * 0.3,
                                            child: TextButton(
                                              onPressed: () {
                                                Navigator.pop(context);
                                              },
                                              child: const Text("Cancel"),
                                            ),
                                          ),
                                          SizedBox(
                                            height: size.height * 0.05,
                                            width: size.width * 0.3,
                                            child: ElevatedButton(
                                              onPressed: () {
                                                User u = User();
                                                bool validater =
                                                    educationformkey
                                                        .currentState!
                                                        .validate();
                                                if (validater) {
                                                  educationformkey.currentState!
                                                      .save();
                                                  u.course = Globals
                                                      .globals.user.course;
                                                  u.school = Globals
                                                      .globals.user.school;
                                                  u.result = Globals
                                                      .globals.user.result;
                                                  u.syear = Globals
                                                      .globals.user.syear;
                                                  u.eyear = Globals
                                                      .globals.user.eyear;

                                                  Globals.globals.allUsers
                                                      .add(u);

                                                  Globals.globals.user.reset();

                                                  Navigator.pop(context);
                                                }
                                                ScaffoldMessenger.of(context)
                                                    .showSnackBar(
                                                  mySnackBar(
                                                      content: validater
                                                          ? "Form Saved"
                                                          : "Failed to validate the form",
                                                      color: validater
                                                          ? Colors.green
                                                          : Colors.red),
                                                );
                                                Navigator.pop(context);
                                              },
                                              style: ElevatedButton.styleFrom(
                                                backgroundColor:
                                                    Colors.blue.shade400,
                                                foregroundColor: Colors.white,
                                                shape: RoundedRectangleBorder(
                                                  borderRadius:
                                                      BorderRadius.circular(50),
                                                ),
                                              ),
                                              child: const Text("Save"),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    );
                  },
                  icon: const Icon(Icons.add),
                  label: const Text(
                    "Add Education Detail",
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blue.shade400,
                    foregroundColor: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5.0),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: size.height * 0.04,
              ),
              ...Globals.globals.allUsers
                  .map(
                    (e) => Card(
                      child: ListTile(
                        title: Text(e.school ?? "Course"),
                        subtitle: Text(e.result ?? "Result"),
                        trailing: IconButton(
                          onPressed: () {
                            Globals.globals.allUsers.remove(e);
                            setState(() {});
                          },
                          icon: const Icon(Icons.delete),
                        ),
                      ),
                    ),
                  )
                  .toList()
            ],
          ),
        ),
      ),
    );
  }
}
