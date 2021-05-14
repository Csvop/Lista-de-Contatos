import 'package:flutter/material.dart';

import 'contacts.dart';

class ContactForm extends StatefulWidget {
  @override
  ContactFormState createState() {
    return ContactFormState();
  }
}

class ContactFormState extends State<ContactForm> {
  final name = TextEditingController();
  final email = TextEditingController();
  final phoneNumber = TextEditingController();
  final sex = TextEditingController();

  bool m = false;
  bool f = false;

  void _printLatestValue() {
    print('${name.text}');
  }

  @override
  void initState() {
    super.initState();

    // Start listening to changes.
    name.addListener(_printLatestValue);
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
                controller: name,
              ),
              Container(
                width: 20,
                height: 20,
              ),
              TextFormField(
                decoration: const InputDecoration(
                  icon: Icon(Icons.mail_outline),
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
                  icon: Icon(Icons.phone),
                  hintText: 'Insert your telefone number here',
                  labelText: 'Telefone Number',
                ),
                controller: phoneNumber,
              ),
              Container(
                width: 20,
                height: 20,
              ),
              Checkbox(
                value: m,
                onChanged: (bool value) {
                  setState(() {
                    m = value;
                    f = false;
                  });
                },
              ),
              Checkbox(
                value: f,
                onChanged: (bool value) {
                  setState(() {
                    f = value;
                    m = false;
                  });
                },
              ),
              Container(
                width: 20,
                height: 20,
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  onSurface: Colors.grey,
                  side: BorderSide(color: Colors.black, width: 1),
                  elevation: 20,
                  minimumSize: Size(150, 50),
                ),
                onPressed: () {
                  Navigator.pop(
                      context,
                      Contact(
                        name.text,
                        ('M' == sex.text) ? 0 : 1,
                        phoneNumber.text,
                        email.text,
                      ));
                  ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(content: Text('Saving contact...')));
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
