import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:radiobutton_provider/controller/provider.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.teal,
        title: const Center(
            child: Text(
          "Radio Button",
          style: TextStyle(fontWeight: FontWeight.w500, fontSize: 25),
        )),
      ),
      body: Consumer<RadioButton>(
        builder: (context, pro, child) => Column(
          children: [
            Card(
              child: RadioListTile(
                title: const Text(
                  "Male",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                value: "Male",
                groupValue: pro.selectvalue,
                onChanged: (selectvalue) {
                  pro.valuechanged(selectvalue.toString());
                },
              ),
            ),
            Card(
              child: RadioListTile(
                title: const Text(
                  "Female",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                value: "Female",
                groupValue: pro.selectvalue,
                onChanged: (selectvalue) {
                  pro.valuechanged(selectvalue.toString());
                },
              ),
            ),
            Card(
              child: RadioListTile(
                title: const Text(
                  "Others",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                value: "others",
                groupValue: pro.selectvalue,
                onChanged: (selectvalue) {
                  pro.valuechanged(selectvalue.toString());
                },
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Text(
              pro.selectvalue,
              style: const TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
            )
          ],
        ),
      ),
    );
  }
}
