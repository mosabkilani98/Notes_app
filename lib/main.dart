import 'package:flutter/material.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:notesapp/Wedgits/customeappbar.dart';
import 'package:notesapp/Wedgits/notesListview.dart';
import 'package:notesapp/models/note_modele.dart';

import 'Wedgits/notebottomshet.dart';

void main() async {
  await Hive.initFlutter();
  Box notesBox = await Hive.openBox("notes_box");
  Hive.registerAdapter(NoteModeleAdapter());
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark(),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: const [
              CustomeAppBarr(title: "Notes", icon: Icons.search),
              Expanded(child: NotesListView())
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showModalBottomSheet(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(16)),
              context: context,
              builder: (context) {
                return const AddNote();
              });
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
