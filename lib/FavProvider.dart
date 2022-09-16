import 'dart:collection';
import 'package:flutter/material.dart';
import 'modal/Plant.dart';

class FavProvider extends ChangeNotifier {
  final List<Plant> _plants = [];

  UnmodifiableListView<Plant> get getPlants => UnmodifiableListView(_plants);

  void addPlant(Plant plant) {
    if (_plants.contains(plant)) {
      _plants.remove(plant);
    } else {
      _plants.add(plant);
    }
    notifyListeners();
  }


}