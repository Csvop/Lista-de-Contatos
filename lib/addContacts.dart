import 'package:flutter/material.dart';

import 'contacts.dart';

class ContactForm extends StatefulWidget {
  @override
  ContactFormState createState() {
    return ContactFormState();
  }
}

class ContactFormState extends State<ContactForm> {
  //Navigator.pop(context);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Add a new contact'),
      ),
      body: Center(
        child: Form(
          child: Column(
            children: <Widget>[
              TextFormField(
                decoration: const InputDecoration(
                icon: Icon(Icons.person),
                hintText: 'Insert your name here',
                labelText: 'Name',
                ),
              ),
              TextFormField(
                decoration: const InputDecoration(
                icon: Icon(Icons.person),
                hintText: 'Insert your email here',
                labelText: 'Email',
                ),
              ),
              TextFormField(
                decoration: const InputDecoration(
                icon: Icon(Icons.person),
                hintText: 'Insert your telefone number here',
                labelText: 'Telefone Number',
                ),
              ),
              TextFormField(
                decoration: const InputDecoration(
                icon: Icon(Icons.person),
                hintText: 'Insert M for Man or F for Woman',
                labelText: 'Sex',
                ),
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.pop(context, Contact('Joao', 1, '431212', 'email@email.com'));
                  ScaffoldMessenger.of(context)
                      .showSnackBar(SnackBar(content: Text('Processing Data')));
                },
                child: Text('Submit'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}