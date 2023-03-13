import 'package:agenda_de_contatos/screens/new_contact/custom_textfield.dart';
import 'package:flutter/material.dart';

class NewContact extends StatefulWidget {
  const NewContact({super.key});

  @override
  State<NewContact> createState() => _NewContactState();
}

class _NewContactState extends State<NewContact> {
  // Variáveis uteis
  var formKey = GlobalKey<FormState>();
  // Controladores
  var nameController = TextEditingController();
  var lastNameController = TextEditingController();
  var emailController = TextEditingController();
  // Controladores - final

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Novo contato"),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          if (formKey.currentState!.validate()) {
            // Salvar no banco
          }
        },
        child: const Icon(Icons.save),
      ),
      body: SingleChildScrollView(
        child: Container(
          width: MediaQuery.of(context).size.width,
          margin: const EdgeInsets.all(16),
          child: Column(
            children: [
              IconButton(
                icon: const Icon(Icons.camera_alt),
                iconSize: 100,
                onPressed: () {},
                color: Theme.of(context).colorScheme.primary,
              ),
              Form(
                key: formKey,
                child: Column(
                  children: [
                    CustomTextField(
                      label: "Nome",
                      controller: nameController,
                      validator: (value) {
                        if (value != null && value.length >= 3) {
                          return null;
                        }
                        return "O nome do contato deve conter ao menos 3 caracteres";
                      },
                    ),
                    CustomTextField(
                      label: "Sobrenome",
                      controller: lastNameController,
                      validator: (value) {
                        if (value != null && value.length >= 3) {
                          return null;
                        }
                        return "O sobrenome do contato deve conter ao menos 3 caracteres";
                      },
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
