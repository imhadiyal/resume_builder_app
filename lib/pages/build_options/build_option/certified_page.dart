import 'package:flutter/material.dart';

import '../../../utils/globals.dart';
import '../../../widget/my_snakbar.dart';

class CertifiedPage extends StatefulWidget {
  const CertifiedPage({super.key});

  @override
  State<CertifiedPage> createState() => _CertifiedPageState();
}

class _CertifiedPageState extends State<CertifiedPage> {
  bool _isChecked = false;
  @override
  Widget build(BuildContext context) {
    GlobalKey<FormState> certifiedkey = GlobalKey<FormState>();
    Size size = MediaQuery.sizeOf(context);
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.blueAccent,
        title: const Text(
          "Certified Courses",
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
                                      Text(
                                        "Certificate Name",
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
                                          hintText: "Certificate Name",
                                        ),
                                        initialValue: Globals
                                            .globals.user.certificate_name,
                                        textInputAction: TextInputAction.next,
                                        keyboardType: TextInputType.name,
                                        onSaved: (val) {
                                          Globals.globals.user
                                              .certificate_name = val;
                                        },
                                        validator: (val) {
                                          if (val!.isEmpty) {
                                            return "Must Enter Certificate Name";
                                          } else {
                                            return null;
                                          }
                                        },
                                      ),
                                      SizedBox(
                                        height: size.height * 0.01,
                                      ),
                                      Text(
                                        "Platform",
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
                                          hintText: "Platform",
                                        ),
                                        initialValue:
                                            Globals.globals.user.platform,
                                        textInputAction: TextInputAction.next,
                                        keyboardType: TextInputType.number,
                                        onSaved: (val) {
                                          Globals.globals.user.platform = val;
                                        },
                                        validator: (val) {
                                          if (val!.isEmpty) {
                                            return "Must Enter Platform";
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
                                        initialValue: Globals
                                            .globals.user.certificate_sdate,
                                        textInputAction: TextInputAction.next,
                                        onSaved: (val) {
                                          Globals.globals.user
                                              .certificate_sdate = val;
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
                                        initialValue: Globals
                                            .globals.user.certificate_edate,
                                        textInputAction: TextInputAction.done,
                                        onSaved: (val) {
                                          Globals.globals.user
                                              .certificate_edate = val;
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
                    "Add Certificate Detail",
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
