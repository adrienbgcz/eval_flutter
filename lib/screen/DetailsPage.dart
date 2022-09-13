import 'package:eval_flutter/screen/widgets/AppBarDetails.dart';
import 'package:flutter/material.dart';

class DetailsPage extends StatefulWidget {
  const DetailsPage({Key? key}) : super(key: key);

  @override
  State<DetailsPage> createState() => _DetailsPageState();
}

class _DetailsPageState extends State<DetailsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarPlant(),
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
                        'assets/plant.png',
                        height: 250,
                      )
                    ]),
                    Column(
                      children: [
                        Row(
                          children: [
                            Text(
                              "Bird of Paradise",
                              style: TextStyle(fontSize: 30),
                            ),
                          ],
                        ),
                        Column(
                          children: [
                            Text(
                              "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.",
                            ),
                          ],
                        )
                      ],
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
