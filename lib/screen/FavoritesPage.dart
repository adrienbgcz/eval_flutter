import 'package:eval_flutter/modal/Plant.dart';
import 'package:eval_flutter/screen/widgets/AppBarFavorites.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../FavProvider.dart';

class FavoritesPage extends StatefulWidget {
  const FavoritesPage({Key? key}) : super(key: key);

  @override
  State<FavoritesPage> createState() => _FavoritesPageState();
}

class _FavoritesPageState extends State<FavoritesPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarFavorites(),
      body: Consumer<FavProvider>(
        builder: (context, fav, child) {
          return ListView.builder(
            itemCount: fav.getPlants.length,
            itemBuilder: (context, index) {
              Plant plant = fav.getPlants[index];
              return ListTile(
                  title: Text(plant.name),
                  trailing: IconButton(
                      onPressed: () {
                        setState(() {
                          fav.addPlant(plant);
                        });
                      },
                      icon: const Icon(Icons.favorite, color: Colors.red))

              );

            },
          );
        },

    ));
  }
}
