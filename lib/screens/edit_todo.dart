import 'package:flutter/material.dart';
import 'package:todo/constants/styles.dart';
import 'package:todo/screens/main_screen.dart';
import 'package:todo/todo_mockups/mockup.dart';

class EditScreen extends StatefulWidget {
  final ToDo? note;

  const EditScreen({super.key, this.note});

  @override
  State<EditScreen> createState() => _EditScreenState();
}

class _EditScreenState extends State<EditScreen> {
  TextEditingController _titleController = TextEditingController();
  TextEditingController _contentController = TextEditingController();

  void initState() {
    if (widget.note != null) {
      _titleController = TextEditingController(text: widget.note!.title);
      _contentController = TextEditingController(text: widget.note!.todoText);
    }
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: black,
      body: Padding(
        padding: const EdgeInsets.fromLTRB(16, 40, 16, 0),
        //možná  bude třeba pozměnit?
        child: Column(children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              IconButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                icon: Container(
                  width: 40,
                  height: 40,
                  decoration: BoxDecoration(
                      color: light_grey,
                      borderRadius: BorderRadius.circular(10)),
                  child: const Icon(
                    Icons.arrow_back_ios_new,
                    color: white,
                  ),
                ),
              )
            ],
          ),
          Expanded(
            child: ListView(
              children: [
                TextField(
                  controller: _titleController,
                  style: edit_text_title_hint,
                  decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: 'Title',
                      hintStyle: edit_text_title_hint),
                ),
                TextField(
                  controller: _contentController,
                  style: edit_text_norm,
                  maxLines: null,
                  decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: 'your notes',
                      hintStyle: text_norm_hint),
                )
              ],
            ),
          ),
        ]),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.pop(
              context, [_titleController.text, _contentController.text]);
        },
        elevation: 10,
        backgroundColor: grey,
        child: Icon(Icons.save),
      ),
    );
  }
}
