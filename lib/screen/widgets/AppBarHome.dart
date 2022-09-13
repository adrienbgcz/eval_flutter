import 'package:flutter/material.dart';

class AppBarHome extends StatelessWidget with PreferredSizeWidget {
  const AppBarHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.white,
      elevation: 0,
      leading: Image.asset(
        'assets/plant.png',
        height: 50,
      ),
      actions: [
        Image.asset(
          'assets/plant.png',
          height: 50,
        )
      ]
    );
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => Size.fromHeight(kToolbarHeight);
}
