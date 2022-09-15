import 'package:flutter/material.dart';

class SalesCard extends StatefulWidget {
  const SalesCard({Key? key}) : super(key: key);

  @override
  State<SalesCard> createState() => _SalesCardState();
}

class _SalesCardState extends State<SalesCard> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
        height: 150,
        width: MediaQuery.of(context).size.width,
        child: Card(
            color: Colors.green[50],
            child: Padding(
                padding: EdgeInsets.all(20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Container(
                        height: 95,
                        width: 150,
                        child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Text(
                                '-30% on office plants',
                                style: TextStyle(
                                    fontSize: 20, fontWeight: FontWeight.bold),
                              ),
                              TextButton(
                                onPressed: () {},
                                child: Text('Shop now'),
                                style: TextButton.styleFrom(
                                  textStyle: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w500,
                                      color: Colors.green),
                                ),
                              )
                            ])),
                    Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset(
                            'assets/plant.png',
                            height: 100,
                          )
                        ])
                  ],
                ))));
  }
}
