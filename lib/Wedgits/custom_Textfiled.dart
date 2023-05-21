import 'package:flutter/material.dart';

class CustomTextFiled extends StatelessWidget {
  const CustomTextFiled(
      {super.key,
      required this.hinttext,
      required this.maxlines,
      this.onSaved});
  final String hinttext;
  final int maxlines;
  final void Function(String?)? onSaved;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      onSaved: onSaved,
      validator: (value) {
        if (value?.isEmpty ?? true) {
          return "Filed Is Required";
        } else {
          return null;
        }
      },
      maxLines: maxlines,
      decoration: InputDecoration(
          hintText: hinttext,
          border: OutlineInputBorder(
              borderSide: const BorderSide(color: Colors.white),
              borderRadius: BorderRadius.circular(10.0))),
    );
  }
}
