import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: const Text("Radio Button")),
      ),
      body: Column(
        children: [
          RadioListTile(
            title: const Text(
              "Male",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            value: "Male",
            groupValue: "others",
            onChanged: (value) {},
          ),
          RadioListTile(
            title: const Text(
              "Female",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            value: "Female",
            groupValue: "others",
            onChanged: (value) {},
          ),
          RadioListTile(
            title: const Text(
              "Others",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            value: "others",
            groupValue: "others",
            onChanged: (value) {},
          )
        ],
      ),
    );
  }
}
