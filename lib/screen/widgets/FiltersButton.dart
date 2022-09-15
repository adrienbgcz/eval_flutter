import 'package:flutter/material.dart';

class FiltersButton extends StatelessWidget {
  const FiltersButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        height: 64,
        width: 70,
        child: Card(
            child: IconButton(onPressed: () {}, icon: Icon(Icons.settings))
        )
    );
  }
}
