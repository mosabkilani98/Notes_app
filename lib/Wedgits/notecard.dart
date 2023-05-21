import 'package:flutter/material.dart';
import 'package:notesapp/Wedgits/editnoteview.dart';

class NoteCard extends StatelessWidget {
  const NoteCard({
    super.key,
  });

  @override
  Widget build(
    BuildContext context,
  ) {
    return GestureDetector(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) {
              return const EditNoteView();
            }),
          );
        },
        child: _notecard(Colors.amber[200]));
  }
}

Padding _notecard(
  var color,
  /* String title, String content,String date */
) {
  return Padding(
    padding: const EdgeInsets.all(12.0),
    child: Container(
      height: 200,
      padding: const EdgeInsets.all(20.0),
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          ListTile(
            // ignore: prefer_const_constructors
            title: Text(
              "Data",
              style: const TextStyle(color: Colors.black, fontSize: 30),
            ),
            subtitle: const Text(
              "data",
              style: TextStyle(
                color: Colors.black,
              ),
            ),
            trailing: IconButton(
              onPressed: () {},
              icon: const Icon(Icons.delete),
              color: Colors.black,
              iconSize: 35,
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: const [Text("data")],
          )
        ],
      ),
    ),
  );
}
