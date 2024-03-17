import 'package:flutter/material.dart';

import '../../../utils/globals.dart';
import '../../../widget/my_snakbar.dart';

class ProjectPage extends StatefulWidget {
  const ProjectPage({super.key});

  @override
  State<ProjectPage> createState() => _ProjectPageState();
}

class _ProjectPageState extends State<ProjectPage> {
  @override
  Widget build(BuildContext context) {
    GlobalKey<FormState> certifiedkey = GlobalKey<FormState>();
    Size size = MediaQuery.sizeOf(context);
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.blueAccent,
        title: const Text(
          "Projects",
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
                                key: certifiedkey,
                                child: SingleChildScrollView(
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      const Text(
                                        "Project Title",
                                        style: TextStyle(
                                            color: Colors.deepPurple,
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
                                          hintText: "Enter your Work Title",
                                        ),
                                        initialValue:
                                            Globals.globals.user.course,
                                        textInputAction: TextInputAction.next,
                                        keyboardType: TextInputType.name,
                                        onSaved: (val) {
                                          Globals.globals.user.course = val;
                                        },
                                        validator: (val) {
                                          if (val!.isEmpty) {
                                            return "Please Enter Work Title";
                                          } else {
                                            return null;
                                          }
                                        },
                                      ),
                                      SizedBox(
                                        height: size.height * 0.02,
                                      ),
                                      const Text(
                                        "Technology",
                                        style: TextStyle(
                                            color: Colors.deepPurple,
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
                                          hintText: "Enter your Technology",
                                        ),
                                        initialValue:
                                            Globals.globals.user.course,
                                        textInputAction: TextInputAction.next,
                                        keyboardType: TextInputType.name,
                                        onSaved: (val) {
                                          Globals.globals.user.course = val;
                                        },
                                        validator: (val) {
                                          if (val!.isEmpty) {
                                            return "Please Enter Technology";
                                          } else {
                                            return null;
                                          }
                                        },
                                      ),
                                      SizedBox(
                                        height: size.height * 0.02,
                                      ),
                                      const Text(
                                        "Features",
                                        style: TextStyle(
                                            color: Colors.deepPurple,
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
                                          hintText: "Enter your Features",
                                        ),
                                        initialValue:
                                            Globals.globals.user.course,
                                        textInputAction:
                                            TextInputAction.newline,
                                        maxLines: 5,
                                        keyboardType: TextInputType.name,
                                        onSaved: (val) {
                                          Globals.globals.user.course = val;
                                        },
                                        validator: (val) {
                                          if (val!.isEmpty) {
                                            return "Please Enter Features";
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
                                                bool validater = certifiedkey
                                                    .currentState!
                                                    .validate();
                                                if (validater) {
                                                  certifiedkey.currentState!
                                                      .save();
                                                  u.certificate_name = Globals
                                                      .globals
                                                      .user
                                                      .certificate_name;
                                                  u.platform = Globals
                                                      .globals.user.platform;
                                                  u.certificate_sdate = Globals
                                                      .globals
                                                      .user
                                                      .certificate_sdate;
                                                  u.certificate_edate = Globals
                                                      .globals
                                                      .user
                                                      .certificate_edate;

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
                    "Add Project Detail",
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
                          e.certificate_name ?? "Certificate Name",
                          style: const TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 19),
                        ),
                        subtitle: Text(
                          e.platform ?? "Platform",
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
