import 'package:flutter/material.dart';

import 'contacts.dart';

class ContactForm extends StatefulWidget {
  @override
  ContactFormState createState() {
    return ContactFormState();
  }
}

class ContactFormState extends State<ContactForm> {
  final nome = TextEditingController();
  final email = TextEditingController();
  final telefone = TextEditingController();
  final sexo = TextEditingController();

  void _printLatestValue() {
    print('${nome.text}');
  }

  @override
  void initState() {
  super.initState();

  // Start listening to changes.
  nome.addListener(_printLatestValue);
}


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
                controller: nome,
              ),
              Container(
                width: 20,
                height: 20,
              ),
              TextFormField(
                decoration: const InputDecoration(
                icon: Icon(Icons.person),
                hintText: 'Insert your email here',
                labelText: 'Email',
                ),
                controller: email,
              ),
              Container(
                width: 20,
                height: 20,
              ),
              TextFormField(
                decoration: const InputDecoration(
                icon: Icon(Icons.person),
                hintText: 'Insert your telefone number here',
                labelText: 'Telefone Number',
                ),
                controller: telefone,
              ),
              Container(
                width: 20,
                height: 20,
              ),
              TextFormField(
                decoration: const InputDecoration(
                icon: Icon(Icons.person),
                hintText: 'Insert M for Man or F for Woman',
                labelText: 'Sex',
                ),
                controller: sexo,
              ),
              Container(
                width: 20,
                height: 20,
              ),
              ElevatedButton(
                style:
                  ElevatedButton.styleFrom(
                  onPrimary: Colors.white,
                  primary: Colors.purple,
                  onSurface: Colors.grey,
                  side: BorderSide(color: Colors.black, width: 1),
                  elevation: 20,
                  minimumSize: Size(150,50),
                ),
                onPressed: () {
                  var sex = ('M' == sexo.text)?0:1;
                  Navigator.pop(context, Contact(nome.text, sex, telefone.text, email.text,));
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