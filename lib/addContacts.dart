import 'package:flutter/material.dart';

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
                // The validator receives the text that the user has entered.
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter some text';
                  }
                  return null;
                },
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/contactDetails');
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