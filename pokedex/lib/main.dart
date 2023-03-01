import 'package:flutter/material.dart';
import 'screens/home/home.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Pokedex",
      home: Home(),
      theme: ThemeData(
        useMaterial3: true,
        colorSchemeSeed: Color(0xFFE3350D),
      ),
    ),
  );
}
