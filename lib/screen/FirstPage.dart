import 'package:eval_flutter/screen/widgets/AppBarFirst.dart';
import 'package:flutter/material.dart';

import 'HomePage.dart';

class FirstPage extends StatefulWidget {
  const FirstPage({Key? key, required this.callback}) : super(key: key);
  final Function callback;

  @override
  State<FirstPage> createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarFirst(),
      body: Container(
        child: Padding(
          padding: EdgeInsets.all(40),
          child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Container(
                  height: 300,
                  width: 300,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                        fit: BoxFit.cover,
                          image: AssetImage('assets/plant.png'),
                      )
                  ),
                ),
                Container(
                  height: 120,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Plant make you feel better",
                        style: TextStyle(
                            fontSize: 30, fontWeight: FontWeight.bold),
                        textAlign: TextAlign.center,
                      ),
                      Text(
                        "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do",
                        style: TextStyle(fontSize: 18),
                        textAlign: TextAlign.center,
                      ),
                    ],
                  ),
                ),
                Container(
                  height: 100,
                  width: 100,
                child: IconButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => HomePage(saved: [], callback: widget.callback,)),
                    );
                  },
                  icon: Image.asset(
                    'assets/green_arrow.png',
                    height: 100,
                  ),
                )),
              ]),
        ),
      ),
    );
  }
}
