import 'package:flutter/material.dart';
import 'views/home/home_view.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Quaranbeats Radio',
        theme: ThemeData(
            primarySwatch: Colors.blue,
            textTheme: Theme.of(context).textTheme.apply(
                  fontFamily: 'Open Sans',
                )),
        home: HomeView());
  }
}