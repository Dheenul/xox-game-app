import 'package:flutter/material.dart';
import 'XoxView.dart';
class MyApp extends StatelessWidget {
  MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return (
      MaterialApp(
        theme: ThemeData(
          brightness: Brightness.light,
          colorSchemeSeed: Colors.deepPurpleAccent
        ),
        darkTheme: ThemeData(
          brightness: Brightness.dark,
          colorSchemeSeed: Colors.lightBlueAccent
        ),
        themeMode: ThemeMode.system,
        debugShowCheckedModeBanner: false,
        home:XoxView(),
      )
    );
  }
}
