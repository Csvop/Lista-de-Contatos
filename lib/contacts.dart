import 'package:flutter/material.dart';
import 'dart:math';

class Contact {
  String name;
  int sex; // 0 if man, 1 if woman
  String phoneNumber;
  String email;
  final Color color =
      Color((Random().nextDouble() * 0xFFFFFF).toInt()).withOpacity(1.0);

  Contact(this.name, this.sex, this.phoneNumber, this.email);

  String initials() {
    if (name == null || name.isEmpty) return '';

    List<String> split = name.split(' ');
    String initials = "";

    for (var i = 0; i < split.length; i++) {
      initials += split[i][0];
    }

    return initials;
  }
}

class ContactAvi extends StatelessWidget {
  final Contact contact;
  final double side;
  ContactAvi(this.contact, this.side);

  @override
  Widget build(BuildContext context) {
    return Container(
        width: side,
        height: side,
        decoration: BoxDecoration(shape: BoxShape.circle, color: contact.color),
        child: CircleAvatar(
            child:
                Text(contact.initials(), style: TextStyle(color: Colors.white)),
            backgroundColor: Colors.transparent));
  }
}
