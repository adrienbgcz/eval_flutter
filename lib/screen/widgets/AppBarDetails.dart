import 'package:flutter/material.dart';

class AppBarPlant extends StatelessWidget with PreferredSizeWidget {
  const AppBarPlant({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    int plantSize = 140;
    return AppBar(
      backgroundColor: Colors.white10,
      elevation: 0,
      leading: IconButton(onPressed: () { print("Return");}, icon: Icon(Icons.arrow_back, color: Colors.black), ),
      title: Center(
        child: Text("$plantSize CM", style: TextStyle(color: Colors.black,),)
      ),
      actions: [
        IconButton(onPressed: () {
        print("Add favorite");
        }, icon: Icon(Icons.favorite_border, color: Colors.black,))
      ],
    );
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => Size.fromHeight(kToolbarHeight);
}
