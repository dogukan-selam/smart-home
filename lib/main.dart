import 'package:flutter/material.dart';
import 'feature/home/home_view.dart';
import 'feature/settings/views/preferences_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      theme:ThemeData.light().copyWith(
        appBarTheme: const AppBarTheme(
          elevation: 0,
          centerTitle: true,
          backgroundColor: Colors.white,
        ),
        scaffoldBackgroundColor: Colors.white
      ),
      home: const HomeView(),
    );
  }
}
