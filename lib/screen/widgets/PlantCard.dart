import 'package:eval_flutter/modal/Plant.dart';
import 'package:eval_flutter/screen/DetailsPage.dart';
import 'package:eval_flutter/service/constants.dart';
import 'package:flutter/material.dart';

class PlantCard extends StatefulWidget {
  PlantCard(this.saved, {Key? key, required this.plant, required this.callback}) : super(key: key);
  final Plant plant;
  final List<Plant> saved;
  final Function callback;


  @override
  State<PlantCard> createState() => _PlantCardState();
}

class _PlantCardState extends State<PlantCard> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 195,
      width: 150,
      child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            GestureDetector(
            onTap: goToDetails,
            child: Stack(
              children: [
                Container(
                  height: 120,
                  width: 110,
                  decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.3),
                        spreadRadius: 1,
                        blurRadius: 3,
                        offset: Offset(
                            1, 1), // changes position of shadow
                      ),
                    ],
                    borderRadius:
                    BorderRadius.all(Radius.circular(10)),
                    image: DecorationImage(
                        image: AssetImage(
                            widget.plant.assetPath),
                        fit: BoxFit.cover),
                  ),
                ),
                Positioned(
                    right: 5.0,
                    top: 5.0,
                    child: Container(
                        height: 20,
                        width: 20,
                        child: FloatingActionButton(
                          heroTag: null,
                          child: Icon(
                            Icons.favorite_border_rounded,
                            size: 10,
                            color: Colors.black,
                          ),
                          backgroundColor: Colors.white70,
                          onPressed: () {
                            (widget.plant);
                          },
                        ))),
              ],
            )),
            Container(
              height: 60,
              width: 110,
              child: Column(
                  mainAxisAlignment:
                  MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      widget.plant.name,
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      widget.plant.type,
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.grey),
                    ),
                  ]),
            )
          ]),
    );
  }

  void goToDetails() {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => DetailsPage(plant: widget.plant, callback: widget.callback,)),
    );
  }

  
}
