import 'package:flutter/material.dart';
import 'contacts.dart';

class ContactDetails extends StatelessWidget {
  final Contact contact;

  ContactDetails({Key key, this.contact}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(""),
      ),
      body: Padding(
          padding: EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(child: ContactAvi(contact, 100)),
              Container(
                padding: const EdgeInsets.only(bottom: 8),
                child: Text(
                  contact.name,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Text(
                contact.phoneNumber,
                style: TextStyle(
                  color: Colors.grey[500],
                ),
              ),
              Text(
                contact.email,
                style: TextStyle(
                  color: Colors.grey[500],
                ),
              ),
              Text(
                (contact.sex == 1) ? 'F' : 'M',
                style: TextStyle(
                  color: Colors.grey[500],
                ),
              )
            ],
          )),
    );
  }
}
