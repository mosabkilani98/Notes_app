import 'package:flutter/material.dart';

class CustomeAppBarr extends StatelessWidget {
  const CustomeAppBarr({super.key, required this.title, required this.icon});
  final String title;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
      Text(
        title,
        style: const TextStyle(fontSize: 35),
      ),
      Container(
        padding: const EdgeInsets.all(7),
        decoration: BoxDecoration(
            border: Border.all(color: Colors.grey, width: 1.0),
            borderRadius: BorderRadius.circular(20)),
        child: Icon(
          icon,
          size: 40,
        ),
      ),
    ]);
  }
}
