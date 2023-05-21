import 'package:flutter/material.dart';

class Addbutton extends StatelessWidget {
  const Addbutton({super.key, this.onTap});
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        width: double.infinity,
        height: 70,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: const Color.fromARGB(202, 144, 202, 249)),
        child: const Center(
            child: Text(
          "ADD",
          style: TextStyle(color: Colors.black),
        )),
      ),
    );
  }
}
