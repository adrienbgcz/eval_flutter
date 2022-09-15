import 'package:flutter/material.dart';

class AppBarHome extends StatelessWidget with PreferredSizeWidget {
  const AppBarHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(padding: EdgeInsets.all(10),
    child: AppBar(
      backgroundColor: Colors.white10,
      elevation: 0,
      leading: Image.asset(
        'assets/plant_logo.png',
        height: 50,
      ),
      actions: [
        Image.asset(
          'assets/profil_logo.png',
          height: 50,
        )
      ]
    )
    );
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => Size.fromHeight(kToolbarHeight);
}
