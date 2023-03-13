import 'package:agenda_de_contatos/screens/home/home.dart';
import 'package:agenda_de_contatos/screens/new_contact/new_contact.dart';
import 'package:flutter/material.dart';
import 'package:agenda_de_contatos/screens/color_schemes.g.dart';

void main() {
  runApp(
    MaterialApp(
      routes: {
        "/": (context) => const Home(),
        "/newContact": (context) => const NewContact(),
      },
      initialRoute: "/",
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
