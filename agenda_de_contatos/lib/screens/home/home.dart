import 'package:agenda_de_contatos/model/contact.dart';
import 'package:agenda_de_contatos/model/contacts_db.dart';
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
          itemCount: contacts.length,
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.of(context).pushNamed("/newContact");
        },
        child: const Icon(Icons.add),
      ),
    );
  } // Build

  Widget itemBuilder(BuildContext context, int index) {
    Contact contact = contacts[index];
    return ListTile(
      leading: IconButton(
        onPressed: () {
          // setState notifica que a tela deve ser atualizada
          setState(() {
            contact.isFavorite = !contact.isFavorite;
          });
        },
        icon: Icon(
          (contact.isFavorite) ? Icons.star : Icons.star_outline,
        ),
        iconSize: 20,
        color: Theme.of(context).colorScheme.secondary,
      ),
      title: Row(
        children: [
          CircleAvatar(
            backgroundImage: AssetImage(
              'assets/images/${contact.photo}.jpg',
            ),
          ),
          const SizedBox(
            width: 16,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                contact.name,
                style: Theme.of(context).textTheme.titleMedium,
              ),
              Text(
                contact.phone,
                style: Theme.of(context).textTheme.labelLarge,
              ),
            ],
          ),
        ],
      ),
      trailing: IconButton(
        icon: const Icon(
          Icons.chevron_right,
        ),
        iconSize: 16,
        onPressed: () {},
      ),
    );
  }
}
