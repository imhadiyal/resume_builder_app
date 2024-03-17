import 'package:flutter/material.dart';

import '../../../utils/globals.dart';
import '../../../widget/my_snakbar.dart';

class ExperiencePage extends StatefulWidget {
  const ExperiencePage({super.key});

  @override
  State<ExperiencePage> createState() => _ExperiencePageState();
}

class _ExperiencePageState extends State<ExperiencePage> {
  bool _isChecked = false;

  @override
  Widget build(BuildContext context) {
    GlobalKey<FormState> experienceformkey = GlobalKey<FormState>();
    Size size = MediaQuery.sizeOf(context);
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.blueAccent,
        title: const Text(
          "Work Experience",
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
                              borderRadius: BorderRadius.all(
                                Radius.circular(10.0),
                              ),
                            ),
                            insetPadding: const EdgeInsets.all(10),
                            shadowColor: Colors.blue,
                            elevation: 5,
                            child: Padding(
                              padding: const EdgeInsets.all(20),
                              child: Form(
                                key: experienceformkey,
                                child: SingleChildScrollView(
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        "Job Title",
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
                                          hintText: "Job Title",
                                        ),
                                        initialValue:
                                            Globals.globals.user.jobtitle,
                                        textInputAction: TextInputAction.next,
                                        keyboardType: TextInputType.name,
                                        onSaved: (val) {
                                          Globals.globals.user.jobtitle = val;
                                        },
                                        validator: (val) {
                                          if (val!.isEmpty) {
                                            return "Must Enter Job Title";
                                          } else {
                                            return null;
                                          }
                                        },
                                      ),
                                      SizedBox(
                                        height: size.height * 0.01,
                                      ),
                                      Text(
                                        "Company Name",
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
                                          hintText: "Company Name",
                                        ),
                                        initialValue:
                                            Globals.globals.user.company_name,
                                        textInputAction: TextInputAction.next,
                                        keyboardType: TextInputType.number,
                                        onSaved: (val) {
                                          Globals.globals.user.company_name =
                                              val;
                                        },
                                        validator: (val) {
                                          if (val!.isEmpty) {
                                            return "Must Enter Company Name";
                                          } else {
                                            return null;
                                          }
                                        },
                                      ),
                                      SizedBox(
                                        height: size.height * 0.01,
                                      ),
                                      Text(
                                        "Start Date",
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
                                          hintText: "Start Date",
                                        ),
                                        keyboardType: TextInputType.number,
                                        initialValue:
                                            Globals.globals.user.companys_date,
                                        textInputAction: TextInputAction.next,
                                        onSaved: (val) {
                                          Globals.globals.user.companys_date =
                                              val;
                                        },
                                        validator: (val) {
                                          if (val!.isEmpty) {
                                            return "Must Enter Start Date";
                                          } else {
                                            return null;
                                          }
                                        },
                                      ),
                                      SizedBox(
                                        height: size.height * 0.01,
                                      ),
                                      Text(
                                        "End Date",
                                        style: TextStyle(
                                            color: Colors.deepPurple.shade700,
                                            fontWeight: FontWeight.bold,
                                            fontSize: 15,
                                            height: 2),
                                      ),
                                      TextFormField(
                                        enabled: _isChecked,
                                        decoration: const InputDecoration(
                                          border: OutlineInputBorder(
                                            borderRadius: BorderRadius.all(
                                              Radius.circular(10),
                                            ),
                                          ),
                                          hintText: "End Date",
                                        ),
                                        keyboardType: TextInputType.number,
                                        initialValue:
                                            Globals.globals.user.companye_date,
                                        textInputAction: TextInputAction.done,
                                        onSaved: (val) {
                                          Globals.globals.user.companye_date =
                                              val;
                                        },
                                      ),
                                      Row(
                                        children: [
                                          Checkbox(
                                              value: this._isChecked,
                                              onChanged: (val) {
                                                this._isChecked = val!;
                                                setState(() {});
                                              }),
                                          const Text(
                                              "I am currently working in this role"),
                                        ],
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
                                                    experienceformkey
                                                        .currentState!
                                                        .validate();
                                                if (validater) {
                                                  experienceformkey
                                                      .currentState!
                                                      .save();
                                                  u.jobtitle = Globals
                                                      .globals.user.jobtitle;
                                                  u.company_name = Globals
                                                      .globals
                                                      .user
                                                      .company_name;
                                                  u.companys_date = Globals
                                                      .globals
                                                      .user
                                                      .companys_date;
                                                  u.companye_date = Globals
                                                      .globals
                                                      .user
                                                      .companye_date;

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
                    "Add Experience Detail",
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
                        title: Text(
                          e.jobtitle ?? "Course",
                          style: const TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 19),
                        ),
                        subtitle: Text(
                          e.company_name ?? "Result",
                          style: const TextStyle(
                              fontSize: 15, fontWeight: FontWeight.bold),
                        ),
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
                  .toList(),
            ],
          ),
        ),
      ),
    );
  }
}
