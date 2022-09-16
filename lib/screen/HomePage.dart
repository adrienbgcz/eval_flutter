import 'package:eval_flutter/screen/widgets/AppBarHome.dart';
import 'package:eval_flutter/screen/widgets/AppBottomBarHome.dart';
import 'package:eval_flutter/screen/widgets/FiltersButton.dart';
import 'package:eval_flutter/screen/widgets/PlantCard.dart';
import 'package:eval_flutter/screen/widgets/SalesCard.dart';
import 'package:eval_flutter/screen/widgets/SearchInput.dart';
import 'package:flutter/material.dart';
import 'package:eval_flutter/service/constants.dart';

import '../modal/Plant.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<Plant> _saved = [];
  @override
  Widget build(BuildContext context) {

    return Scaffold(
        appBar: AppBarHome(),
        body: Container(
            child: Padding(
                padding: EdgeInsets.all(25),
                child: Column(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
                  Row(children: [
                    SearchInput(),
                    FiltersButton(),
                  ]),
                  SalesCard(),
                  Row(mainAxisAlignment: MainAxisAlignment.start, children: [
                    Text(
                      "New friends",
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    )
                  ]),
                  Container(
                    height: 200,
                    width: MediaQuery.of(context).size.width,
                    child: ListView.builder(
                      itemCount: plants.length,
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, index) {
                        return PlantCard(plant: plants[index], callback: changeFavorite, isFavorite: isFavorite(plants[index]),);
                      },
                    ),
                  ),
                  AppBottomBarHome(saved: _saved,)



                ]))));
  }

  bool isFavorite(Plant plant){
    return _saved.contains(plant);
  }

  void changeFavorite(Plant plant) {
    setState(() {
      if(_saved.contains(plant)){
        _saved.remove(plant);
      }else{
        _saved.add(plant);
      }
    });
  }

}
