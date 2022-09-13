import 'package:eval_flutter/screen/widgets/AppBarHome.dart';
import 'package:eval_flutter/screen/widgets/SearchInput.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBarHome(),
        body: Container(
            child: Padding(
                padding: EdgeInsets.all(30),
                child: SearchInput()


            )));

  }
}
