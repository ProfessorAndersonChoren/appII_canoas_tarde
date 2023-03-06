import 'package:agenda_de_contatos/screens/home/home.dart';
import 'package:flutter/material.dart';
import 'package:agenda_de_contatos/screens/color_schemes.g.dart';

void main() {
  runApp(
    MaterialApp(
      home: const Home(),
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: lightColorScheme,
        useMaterial3: true,
      ),
      darkTheme: ThemeData(
        colorScheme: darkColorScheme,
        useMaterial3: true,
      ),
      // themeMode: ThemeMode.dark,
    ),
  );
}
