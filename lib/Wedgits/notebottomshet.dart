import 'package:flutter/material.dart';
import 'package:notesapp/Wedgits/addbutton.dart';
import 'package:notesapp/Wedgits/custom_Textfiled.dart';

class AddNote extends StatelessWidget {
  const AddNote({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.all(16.0),
      child: Notebuttomsheet(),
    );
  }
}

class Notebuttomsheet extends StatefulWidget {
  const Notebuttomsheet({
    super.key,
  });

  @override
  State<Notebuttomsheet> createState() => _NotebuttomsheetState();
}

class _NotebuttomsheetState extends State<Notebuttomsheet> {
  final GlobalKey<FormState> formkey = GlobalKey();
  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;
  //Error catch (null ,empty) cases
  String? tittle, subtittle;
  @override
  Widget build(BuildContext context) {
    return Form(
      key: formkey,
      autovalidateMode: autovalidateMode,
      child: Column(
        children: [
          CustomTextFiled(
            hinttext: "Title",
            maxlines: 1,
            onSaved: (value) {
              tittle = value;
            },
          ),
          const SizedBox(
            height: 20.0,
          ),
          CustomTextFiled(
            hinttext: "Content",
            maxlines: 7,
            onSaved: (value) {
              subtittle = value;
            },
          ),
          const Spacer(),
          Addbutton(
            onTap: () {
              if (formkey.currentState!.validate()) {
                formkey.currentState!.save();
              } else {
                autovalidateMode = AutovalidateMode.always;
                setState(() {});
              }
            },
          ),
        ],
      ),
    );
  }
}
