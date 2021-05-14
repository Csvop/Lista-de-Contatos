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
              SizedBox(height: 10),
              Container(
                alignment: Alignment.center,
                padding: const EdgeInsets.only(bottom: 8),
                child: Text(
                  contact.name + " (" + ((contact.sex == 1) ? '♀' : '♂') + ")",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Container(
                  //padding: const EdgeInsets.only(bottom: 8),
                  child: Column(children: [
                ListTile(
                    leading: Icon(Icons.phone, color: contact.color),
                    title: Text("Mobile"),
                    subtitle: Text(contact.phoneNumber,
                        style: TextStyle(color: Colors.grey[500]))),
                ListTile(
                    leading: Icon(Icons.email, color: contact.color),
                    title: Text("E-mail"),
                    subtitle: Text(contact.email,
                        style: TextStyle(color: Colors.grey[500])))
              ]))
            ],
          )),
    );
  }
}
