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
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.blueAccent,
        foregroundColor: Colors.white,
        title: const Text("Enter your Skills"),
      ),
      backgroundColor: Colors.grey.shade300,
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
                      child: TextFormField(
                        controller: Globals.globals.controller[index],
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
              OutlinedButton(
                onPressed: () {
                  setState(() {
                    Globals.globals.skill.add("");
                    Globals.globals.controller.add(TextEditingController());
                  });
                },
                child: const Text("Add"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
