import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Image.asset("assets/logo.png"),
        title: Text("Charmander #004"),
      ),
      body: Container(
        width: MediaQuery.of(context).size.width,
        padding: EdgeInsets.symmetric(
          horizontal: 16,
          vertical: 20,
        ),
        child: Column(
          children: [
            Image.asset("assets/charmander.png"),
            Text(
                "Tem preferência por coisas quentes. Quando chove, diz-se que o vapor jorra da ponta da cauda."),
            Card(
              margin: EdgeInsets.symmetric(vertical: 20),
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Row(
                  children: [
                    // 1° Coluna
                    Column(
                      children: [
                        titleText(
                          text: "Altura",
                          context: context,
                        ),
                        Text("0.6m"),
                        SizedBox(
                          height: 40,
                        ),
                        titleText(
                          text: "Tipo",
                          context: context,
                        ),
                        Chip(
                          label: Text("Fogo"),
                          backgroundColor: Color(0xFFF17F2E),
                        ),
                      ],
                    ),
                    // 2° Coluna
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Text titleText({
    required String text,
    required BuildContext context,
  }) {
    return Text(
      text,
      style: Theme.of(context).textTheme.titleLarge!.copyWith(
            color: Theme.of(context).colorScheme.primary,
          ),
    );
  }

  Text subtitleText({
    required String text,
    required BuildContext context,
  }) {
    return Text(
      text,
      style: Theme.of(context).textTheme.titleMedium,
    );
  }
}
