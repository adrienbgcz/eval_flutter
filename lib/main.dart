import 'package:eval_flutter/screen/FirstPage.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'FavProvider.dart';
import 'modal/Plant.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (context) => FavProvider(),
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    List<Plant> saved;

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const FirstPage()
    );
  }
}

