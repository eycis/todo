import 'package:flutter/material.dart';
import 'package:todo/constants/styles.dart';

class EditScreen extends StatefulWidget {
  const EditScreen({super.key});

  @override
  State<EditScreen> createState() => _EditScreenState();
}

class _EditScreenState extends State<EditScreen> {
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
                  style: edit_text_title_hint,
                  decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: 'Title',
                      hintStyle: edit_text_title_hint),
                ),
                TextField(
                  style: text_norm,
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
        onPressed: () {},
        elevation: 10,
        backgroundColor: grey,
        child: Icon(Icons.save),
      ),
    );
  }
}
