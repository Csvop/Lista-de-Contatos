import 'package:flutter/material.dart';
import 'contacts.dart';

class ContactDetails extends StatelessWidget {
  final contact = ModalRoute.of(context)!.settings.arguments as Contact;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(contact.name),
      ),
      body: Padding(
          padding: EdgeInsets.all(16.0),
          child:
              Row(children: [Text(contact.phoneNumber), Text(contact.email)])),
    );
  }
}
