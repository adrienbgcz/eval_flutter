import 'package:eval_flutter/screen/widgets/AppBarDetails.dart';
import 'package:flutter/material.dart';

import '../modal/Plant.dart';

class DetailsPage extends StatefulWidget {
  const DetailsPage({Key? key, required this.plant, required this.callback}) : super(key: key);
  final Plant plant;
  final Function callback;

  @override
  State<DetailsPage> createState() => _DetailsPageState();
}

class _DetailsPageState extends State<DetailsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarPlant(callback: widget.callback,),
      body: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          child: Padding(
              padding: EdgeInsets.all(30),
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                      Image.asset(
                        widget.plant.assetPath,
                        height: 250,
                      )
                    ]),
                    Container(
                      height: 160,
                      child : Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            widget.plant.name,
                            style: TextStyle(fontSize: 30),
                          ),
                          Text(
                            widget.plant.description,
                          ),
                        ],
                      ),
                    ),

                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Column(children: [
                          Image.asset(
                            'assets/plant.png',
                            height: 50,
                          ),
                          Text("Easy Care"),
                        ]),
                        Column(children: [
                          Image.asset(
                            'assets/plant.png',
                            height: 50,
                          ),
                          Text("Easy Care"),
                        ]),
                        Column(children: [
                          Image.asset(
                            'assets/plant.png',
                            height: 50,
                          ),
                          Text("Easy Care"),
                        ])
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Text("\$14"),
                        Row(
                          children: [
                            TextButton.icon(
                                // <-- TextButton
                                onPressed: () {},
                                icon: Icon(
                                  Icons.shopping_bag,
                                  size: 24.0,
                                ),
                                label: Text('Add to cart')),
                          ],
                        )
                      ],
                    )
                  ]))),
    );
  }
}
