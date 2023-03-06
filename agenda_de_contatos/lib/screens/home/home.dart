import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Meus contatos"),
      ),
      body: Container(
        margin: const EdgeInsets.all(16),
        child: ListView.separated(
          itemBuilder: itemBuilder,
          separatorBuilder: (context, index) {
            return const Divider();
          },
          itemCount: 50,
        ),
      ),
    );
  } // Build

  Widget itemBuilder(BuildContext context, int index) {
    return ListTile(
      leading: Icon(
        Icons.star_outline,
        size: 20,
        color: Theme.of(context).colorScheme.secondary,
      ),
      title: const Row(
        children: [
          CircleAvatar(
            backgroundImage: AssetImage('assets/images/Nicole.jpg'),
          ),
          Column(
            children: [
              Text("Nicole"),
              Text("+55 51 11111-1111"),
            ],
          ),
        ],
      ),
    );
  }
}
