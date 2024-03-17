import 'package:flutter/material.dart';

import '../../../utils/globals.dart';

class HobbiesPage extends StatefulWidget {
  const HobbiesPage({super.key});

  @override
  State<HobbiesPage> createState() => _HobbiesPageState();
}

class _HobbiesPageState extends State<HobbiesPage> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.sizeOf(context);
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.blueAccent,
        foregroundColor: Colors.white,
        title: const Text("Enter your Hobbies"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Container(
          padding: EdgeInsets.all(16),
          decoration: const BoxDecoration(
            color: Colors.white,
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              ...List.generate(
                Globals.globals.hobbie.length,
                (index) => Row(
                  children: [
                    Expanded(
                      child: SizedBox(
                        height: size.height * 0.08,
                        child: TextFormField(
                          decoration: const InputDecoration(
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.all(
                                Radius.circular(10),
                              ),
                            ),
                            hintText: "Enter a Hobbies",
                          ),
                          controller: Globals.globals.hobbiecontroller[index],
                        ),
                      ),
                    ),
                    IconButton(
                      onPressed: () {
                        Globals.globals.hobbie.removeAt(index);
                        Globals.globals.hobbiecontroller.removeAt(index);

                        setState(() {});
                      },
                      icon: const Icon(Icons.delete),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              ElevatedButton(
                onPressed: () {
                  setState(() {
                    Globals.globals.hobbie.add("");
                    Globals.globals.hobbiecontroller
                        .add(TextEditingController());
                  });
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blue.shade400,
                  foregroundColor: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(50),
                  ),
                ),
                child: const Text("ADD"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
