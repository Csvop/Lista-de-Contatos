import 'package:flutter/material.dart';
import 'contacts.dart';
import 'contactDetails.dart';
import 'addContacts.dart';

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

  void _addContact() async {

    final newContact = await Navigator.push(context, 

    MaterialPageRoute(builder: (context) => ContactForm()),

    );

    setState(() {
      // if(newContact.name != null){
      //   print('retorna');
      // }
      try{
        var newContactName = newContact.name;
        contactList.add(newContact);
      }
      on NoSuchMethodError {
        print('Erro! Contato não informado.');
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Contact List'),
      ),
      body: ListView.builder(
        itemCount: contactList.length,
        itemBuilder: (context, index) {
          return ListTile(
            leading: ContactAvi(contactList[index], 40),
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
