import 'package:flutter/material.dart';
import 'contacts.dart';

class ContactDetails extends StatelessWidget {
  final Contact contact;

  ContactDetails({Key key, this.contact}) : super(key: key);

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
