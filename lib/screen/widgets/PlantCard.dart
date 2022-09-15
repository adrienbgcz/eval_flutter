import 'package:eval_flutter/modal/Plant.dart';
import 'package:eval_flutter/screen/DetailsPage.dart';
import 'package:flutter/material.dart';

class PlantCard extends StatelessWidget {
  const PlantCard(
      {Key? key,
      required this.plant,
      required this.callback,
      required this.isFavorite})
      : super(key: key);
  final Plant plant;
  final Function callback;
  final bool isFavorite;

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
              onTap: () => goToDetails(context),
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
                          offset: Offset(1, 1), // changes position of shadow
                        ),
                      ],
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                      image: DecorationImage(
                          image: AssetImage(plant.assetPath),
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
                        backgroundColor: Colors.white70,
                        onPressed: () => callback(plant),
                        child: chooseIcon(),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              height: 60,
              width: 110,
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      plant.name,
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      plant.type,
                      style: TextStyle(
                          fontWeight: FontWeight.bold, color: Colors.grey),
                    ),
                  ]),
            )
          ]),
    );
  }

  void goToDetails(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => DetailsPage(
          plant: plant,
          callback: () {},
        ),
      ),
    );
  }

  Icon chooseIcon() {
    return Icon(
      (isFavorite) ? Icons.favorite : Icons.favorite_border,
      size: 10,
      color: (isFavorite) ? Colors.red : Colors.black,
    );
  }
}
