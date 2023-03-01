import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Image.asset("assets/logo.png"),
        title: const Text("Charmander #004"),
      ),
      body: Container(
        width: MediaQuery.of(context).size.width,
        padding: const EdgeInsets.symmetric(
          horizontal: 16,
          vertical: 20,
        ),
        child: Column(
          children: [
            Image.asset("assets/charmander.png"),
            const Text(
                "Tem preferência por coisas quentes. Quando chove, diz-se que o vapor jorra da ponta da cauda."),
            Card(
              margin: const EdgeInsets.symmetric(vertical: 20),
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    // 1° Coluna
                    Column(
                      children: [
                        titleText(
                          text: "Altura",
                          context: context,
                        ),
                        subtitleText(
                          text: "0.6m",
                          context: context,
                        ),
                        const SizedBox(
                          height: 40,
                        ),
                        titleText(
                          text: "Tipo",
                          context: context,
                        ),
                        customChip(
                          text: "Fogo",
                          color: const Color(0xFFF17F2E),
                          context: context,
                        ),
                      ],
                    ),
                    // 2° Coluna
                    Column(
                      children: [
                        titleText(
                          text: "Peso",
                          context: context,
                        ),
                        subtitleText(
                          text: "8.5kg",
                          context: context,
                        ),
                        const SizedBox(
                          height: 40,
                        ),
                        titleText(
                          text: "Habilidade",
                          context: context,
                        ),
                        subtitleText(
                          text: "Chama",
                          context: context,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            Align(
              alignment: Alignment.centerLeft,
              child: Text(
                "Fraquezas",
                style: Theme.of(context).textTheme.titleLarge,
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                customChip(
                  text: "Água",
                  color: const Color(0xFF688FF3),
                  context: context,
                ),
                customChip(
                  text: "Terra",
                  color: const Color(0xFFF6DE3E),
                  context: context,
                ),
                customChip(
                  text: "Rocha",
                  color: const Color(0xFFA48C22),
                  context: context,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  // Componentes
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

  Chip customChip({
    required String text,
    required Color color,
    required BuildContext context,
  }) {
    return Chip(
      label: Text(text),
      backgroundColor: color,
      labelStyle: Theme.of(context).textTheme.labelLarge!.copyWith(
            color: Colors.white,
          ),
    );
  }
}
