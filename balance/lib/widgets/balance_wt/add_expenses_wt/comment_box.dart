import 'package:flutter/material.dart';

class CommentBox extends StatelessWidget {
  const CommentBox({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Row(
        children: [
          Expanded(
              child: TextFormField(
            maxLength: 32,
            keyboardType: TextInputType.text,
            decoration: const InputDecoration(
                icon: Icon(
                  Icons.sticky_note_2,
                  size: 25,
                ),
                hintText: 'En que gastaste perro',
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10)))),
            textCapitalization: TextCapitalization.sentences,
            textAlign: TextAlign.justify,
          ))
        ],
      ),
    );
  }
}
