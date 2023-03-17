import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'alliraries.dart';

class CustomField extends StatelessWidget {
  TextEditingController? controller;
  FormFieldValidator<String>? validator;
  String labelText, hint;
  double length, breadth;
  bool focusAuto;
  FocusNode? nodeFocus;
  TextInputType? keyBoard;

  CustomField(
      {Key? key,
        this.controller,
        required this.nodeFocus,
        this.validator,
        required this.labelText,
        required this.hint,
       required this.length,
        required this.breadth,
        required this.focusAuto,
        required this.keyBoard})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [

        TextFormField(
            autofocus: focusAuto,
            focusNode: nodeFocus,
            autovalidateMode: null,
            keyboardType: keyBoard,
            decoration: InputDecoration(
              hintText: hint,
            ),





            controller: controller,
            validator: validator,
          ),

      ],
    );
  }
}