import 'package:flutter/material.dart';

class AppBarFirst extends StatelessWidget with PreferredSizeWidget {
  const AppBarFirst({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.white10,
      elevation: 0,
      leading: Image.asset(
        'assets/logo.png',
        height: 15,
        width: 15,
      )
    );
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => Size.fromHeight(kToolbarHeight);
}
