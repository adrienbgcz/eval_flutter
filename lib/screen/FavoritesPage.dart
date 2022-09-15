import 'package:eval_flutter/modal/Plant.dart';
import 'package:eval_flutter/screen/widgets/AppBarHome.dart';
import 'package:flutter/material.dart';

class FavoritesPage extends StatefulWidget {
  const FavoritesPage({Key? key, required this.saved}) : super(key: key);
  final List<Plant> saved;

  @override
  State<FavoritesPage> createState() => _FavoritesPageState();
}

class _FavoritesPageState extends State<FavoritesPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarHome(),
      body: ListView.builder(
        itemCount: widget.saved.length,
        itemBuilder: (context, index) {
          Plant plant = widget.saved[index];
          return ListTile(
              title: Text(plant.name),
              trailing: IconButton(
                  onPressed: () {
                    setState(() {
                      widget.saved.remove(plant);
                    });
                  },
                  icon: const Icon(Icons.favorite, color: Colors.red))

          );

        },
      ),
    );
  }
}
