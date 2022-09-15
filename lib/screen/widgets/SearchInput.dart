import 'package:flutter/material.dart';

class SearchInput extends StatelessWidget {
  const SearchInput({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        width: 260,
        child: Card(
          child: ListTile(
            leading: Icon(Icons.search),
            title: TextField(
              /*controller: controller,*/
              decoration: InputDecoration(
                  hintText: 'Search...', border: InputBorder.none),

              /*onChanged: onSearchTextChanged,*/
            ),
          ),
        ),
    );
  }
}
