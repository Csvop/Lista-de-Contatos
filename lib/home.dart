import 'package:flutter/material.dart';
import 'contacts.dart';
import 'contactDetails.dart';

class ContactListScreen extends StatefulWidget {
  ContactListScreen() : super();

  @override
  _ContactListScreenState createState() => _ContactListScreenState();
}

class _ContactListScreenState extends State<ContactListScreen> {
  List<Contact> contactList = [
    Contact('Arthur', 0, '1234', 'blabla@email.com'),
    Contact('Bruno', 0, '1234', 'blabla@email.com'),
    Contact('Aline', 1, '1234', 'blabla@email.com')
  ];

  void _addContact() {
    // implementar depois
    //setState(() {
    //  _counter++;
    //});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Contact List'),
      ),
      body: ListView.builder(
        itemCount: contactList.length - 1,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(contactList[index].name),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) =>
                      ContactDetails(contact: contactList[index]),
                ),
              );
            },
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _addContact,
        tooltip: 'Add Contact',
        child: Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
