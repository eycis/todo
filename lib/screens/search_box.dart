import 'package:flutter/material.dart';
import 'package:todo/constants/styles.dart';

class SearchBox extends StatelessWidget {
  const SearchBox({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      decoration: BoxDecoration(
        color: AppPalette.grey,
        borderRadius: BorderRadius.circular(20),
      ),
      child: TextField(
        decoration: InputDecoration(
          contentPadding: const EdgeInsets.only(top: 5, left: 30),
          prefixIcon: Icon(
            Icons.search,
            color: AppPalette.black,
            size: 20,
          ),
          prefixIconConstraints: const BoxConstraints(
            maxHeight: 20,
            maxWidth: 25,
          ),
          border: InputBorder.none,
          hintText: 'Add a new item',
          hintStyle: TextStyle(color: AppPalette.black),
        ),
      ),
    );
  }
}
