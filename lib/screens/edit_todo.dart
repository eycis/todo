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
          Expanded( // TODO(eycis): je to potřeba?
            child: ListView( // TODO(eycis): proč listview a ne column?
              children: [ // TODO(eycis): type
                TextField( // TODO(eycis): možná přidat autofocus?? potom zvážit vzhledem k tomu že to bude form ,tak nějaký třeba validátor si můžeš zkusit a aby se na tlačítko na klávesnici next změnil focus na ten content, ale to už je složitejší
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
        child: const Icon(Icons.save),
      ),
    );
  }
}
