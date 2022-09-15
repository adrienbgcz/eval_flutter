import 'package:eval_flutter/screen/DetailsPage.dart';
import 'package:eval_flutter/screen/FavoritesPage.dart';
import 'package:eval_flutter/screen/FirstPage.dart';
import 'package:flutter/material.dart';

import '../../modal/Plant.dart';

class AppBottomBarHome extends StatelessWidget with PreferredSizeWidget {
  const AppBottomBarHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 60,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
          color: Colors.grey.shade200,
          borderRadius: BorderRadius.all(Radius.circular(20)),
        ),
        child: Padding(
          padding: EdgeInsets.all(10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              IconButton(onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => FirstPage()),
                );
              }, icon: Icon(Icons.home),),
              IconButton(onPressed: () {}, icon: Icon(Icons.search),),
              IconButton(onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => FavoritesPage(saved: [],)),
                );
              }, icon: Icon(Icons.favorite),),
              IconButton(onPressed: () {

              }, icon: Icon(Icons.shopping_bag),),
            ],
          ),
          /*child: AppBar(
            backgroundColor: Colors.white10,
            elevation: 0,
            leading: Image.asset(
              'assets/plant.png',
              height: 50,
            ),
            actions: [
              Image.asset(
                'assets/plant.png',
                height: 50,
              ),
              Image.asset(
                'assets/plant.png',
                height: 50,
              ),
              Image.asset(
                'assets/plant.png',
                height: 50,
              ),
              Image.asset(
                'assets/plant.png',
                height: 50,
              )
            ]
        )*/
        ));
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => Size.fromHeight(kToolbarHeight);
}
