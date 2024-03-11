import 'package:flutter/material.dart';
import 'package:resume_builder_app/utils/routes_utils.dart';

class BuildOptionPage extends StatefulWidget {
  const BuildOptionPage({super.key});

  @override
  State<BuildOptionPage> createState() => _BuildOptionPageState();
}

class _BuildOptionPageState extends State<BuildOptionPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text("Build Option"),
        backgroundColor: Colors.blueAccent,
        foregroundColor: Colors.white,
      ),
      body: Padding(
        padding: EdgeInsets.all(10),
        child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Column(
            children: MyRoutes.buildOptions
                .map(
                  (e) => Card(
                    shadowColor: Colors.grey,
                    elevation: 3,
                    margin: const EdgeInsets.all(10),
                    shape: OutlineInputBorder(
                      gapPadding: 10,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: ListTile(
                      leading: Image.asset(
                        e['icon'],
                        height: 40,
                      ),
                      title: Text(
                        e['title'],
                        style: const TextStyle(
                            fontSize: 16, fontWeight: FontWeight.bold),
                      ),
                      trailing: IconButton(
                        onPressed: () {
                          Navigator.pushNamed(context, e['route']);
                        },
                        icon: const Icon(Icons.navigate_next),
                      ),
                    ),
                  ),
                )
                .toList(),
          ),
        ),
      ),
    );
  }
}
