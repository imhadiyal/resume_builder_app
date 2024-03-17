import 'package:flutter/material.dart';
import 'package:resume_builder_app/utils/globals.dart';
import 'package:resume_builder_app/utils/routes_utils.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  void initState() {
    Globals.globals.allUsers;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text("Creat Resume"),
        backgroundColor: Colors.blueAccent,
        foregroundColor: Colors.white,
        actions: [
          IconButton(
              onPressed: () {
                Navigator.pushNamed(context, MyRoutes.pdfpage);
              },
              icon: Icon(Icons.picture_as_pdf_outlined))
        ],
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {
          Navigator.of(context).pushNamed(MyRoutes.buildOptionPage);
        },
        icon: const Icon(Icons.add),
        label: const Text("Add"),
      ),
      body: Padding(
        padding: EdgeInsets.all(16),
        child: Column(
          children: [
            ...Globals.globals.allUsers
                .map(
                  (e) => Card(
                    child: ListTile(
                      leading: CircleAvatar(
                        foregroundImage:
                            e.image != null ? FileImage(e.image!) : null,
                      ),
                      title: Text(e.name ?? "Name"),
                    ),
                  ),
                )
                .toList(),
          ],
        ),
      ),
    );
  }
}
