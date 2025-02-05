import 'package:flutter/material.dart';
import 'package:todo/constants/styles.dart';
import 'package:todo/constants/text_styles.dart';
import 'package:todo/todo_mockups/mockup.dart';

class EditScreen extends StatefulWidget {
  const EditScreen({super.key, this.note});
  final ToDo? note;

  @override
  State<EditScreen> createState() => _EditScreenState();
}

class _EditScreenState extends State<EditScreen> {
  TextEditingController _titleController = TextEditingController();
  TextEditingController _contentController = TextEditingController();

  @override
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
      backgroundColor: AppPalette.black,
      body: Padding(
        padding: const EdgeInsets.fromLTRB(16, 40, 16, 0),
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
                      color: AppPalette.light_grey,
                      borderRadius: BorderRadius.circular(10)),
                  child: const Icon(
                    Icons.arrow_back_ios_new,
                    color: AppPalette.white,
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
        backgroundColor: AppPalette.grey,
        child: const Icon(Icons.save),
      ),
    );
  }
}
