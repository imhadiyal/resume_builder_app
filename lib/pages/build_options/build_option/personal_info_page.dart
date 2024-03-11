import 'package:flutter/material.dart';

class PersonalInfoPage extends StatefulWidget {
  const PersonalInfoPage({super.key});

  @override
  State<PersonalInfoPage> createState() => _PersonalInfoPageState();
}

bool? _pr = true;

class _PersonalInfoPageState extends State<PersonalInfoPage> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.sizeOf(context);
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.blueAccent,
        title: const Text("Personal information"),
      ),
      body: IndexedStack(
        children: [
          Column(
            children: [
              Row(
                children: [
                  GestureDetector(
                    onTap: () {
                      _pr = true;
                      setState(() {});
                    },
                    child: Container(
                      margin:
                          const EdgeInsets.only(left: 10, top: 10, bottom: 10),
                      height: size.height * 0.07,
                      width: size.width * 0.47,
                      decoration: BoxDecoration(
                        color: (_pr == true)
                            ? Colors.white10
                            : Colors.red.shade400,
                        borderRadius: const BorderRadius.only(
                            bottomLeft: Radius.circular(10),
                            topLeft: Radius.circular(10)),
                        border: Border.all(
                            color: Colors.black, style: BorderStyle.solid),
                      ),
                    ),
                  ),
                  const Spacer(),
                  GestureDetector(
                    onTap: () {
                      _pr = false;
                      setState(() {});
                    },
                    child: Container(
                      margin:
                          const EdgeInsets.only(right: 10, top: 10, bottom: 10),
                      height: size.height * 0.07,
                      width: size.width * 0.47,
                      decoration: BoxDecoration(
                        color: (_pr == false)
                            ? Colors.white12
                            : Colors.blue.shade400,

                        // color: Colors.blue.shade400,
                        borderRadius: const BorderRadius.only(
                          bottomRight: Radius.circular(10),
                          topRight: Radius.circular(10),
                        ),
                        border: Border.all(
                            color: Colors.black, style: BorderStyle.solid),
                      ),
                    ),
                  ),
                ],
              ),
              (_pr == true)
                  ? Container(
                      margin: const EdgeInsets.all(15),
                      height: size.height * 0.5,
                      width: double.infinity,
                      decoration: const BoxDecoration(
                        color: Colors.black12,
                      ),
                      child: Column(
                        children: [
                          Form(
                            child: TextFormField(),
                          )
                        ],
                      ),
                    )
                  : Container(
                      height: size.height * 0.07,
                      width: size.width * 0.5,
                      color: Colors.cyan,
                    )
            ],
          ),
        ],
      ),
    );
  }
}
