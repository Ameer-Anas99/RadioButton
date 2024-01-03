import 'package:flutter/material.dart';

class RadioButton extends ChangeNotifier {
  String _selectvalue = "others";
  TextEditingController textcontroller = TextEditingController();
  String get selectvalue => _selectvalue;

  void valuechanged(val) {
    _selectvalue = val;
    notifyListeners();
  }
}
