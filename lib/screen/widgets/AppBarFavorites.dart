import 'package:flutter/material.dart';

import '../HomePage.dart';

class AppBarFavorites extends StatelessWidget with PreferredSizeWidget {
  const AppBarFavorites({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(padding: EdgeInsets.all(10),
    child: AppBar(
      backgroundColor: Colors.white10,
      elevation: 0,
      leading: IconButton(onPressed: () {
        Navigator.pop(
          context,
          MaterialPageRoute(
              builder: (context) => const HomePage()),
        );
      },
      icon: Icon(Icons.arrow_back, color: Colors.green,),),
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
