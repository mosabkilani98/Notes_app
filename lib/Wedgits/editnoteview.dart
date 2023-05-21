import 'package:flutter/material.dart';

import 'customeappbar.dart';

class EditNoteView extends StatelessWidget {
  const EditNoteView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              const CustomeAppBarr(title: "Edit", icon: Icons.check),
              const SizedBox(
                height: 40,
              ),
              TextField(
                decoration: InputDecoration(
                    hintText: 'Tilte',
                    border: OutlineInputBorder(
                        borderSide: const BorderSide(color: Colors.white),
                        borderRadius: BorderRadius.circular(10.0))),
              ),
              const SizedBox(
                height: 20.0,
              ),
              TextField(
                maxLines: 7,
                decoration: InputDecoration(
                    hintText: 'Content',
                    border: OutlineInputBorder(
                        borderSide: const BorderSide(color: Colors.white),
                        borderRadius: BorderRadius.circular(10.0))),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
