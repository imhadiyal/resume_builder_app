import 'package:flutter/material.dart';
import 'package:resume_builder_app/utils/globals.dart';

class TecnicalPage extends StatefulWidget {
  const TecnicalPage({super.key});

  @override
  State<TecnicalPage> createState() => _TecnicalPageState();
}

class _TecnicalPageState extends State<TecnicalPage> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.sizeOf(context);
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.blueAccent,
        foregroundColor: Colors.white,
        title: const Text("Enter your Skills"),
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
                Globals.globals.skill.length,
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
                            hintText: "Enter a Skill",
                          ),
                          controller: Globals.globals.controller[index],
                        ),
                      ),
                    ),
                    IconButton(
                      onPressed: () {
                        Globals.globals.skill.removeAt(index);
                        Globals.globals.controller.removeAt(index);

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
                    Globals.globals.skill.add("");
                    Globals.globals.controller.add(TextEditingController());
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
