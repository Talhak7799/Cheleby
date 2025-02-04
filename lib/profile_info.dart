import 'package:flutter/material.dart';

class ProfileInfo extends StatelessWidget {
  final String name;
  final String surname;
  final String email;

  ProfileInfo({required this.name, required this.surname, required this.email});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start, // Sol hizalama
      children: [
        // İsim ve Soyisim
        ListTile(
          leading: Icon(Icons.person),
          title: Text('$name $surname'), // İsim soyisim
        ),
        // E-posta
        ListTile(
          leading: Icon(Icons.email),
          title: Text(email), // E-posta
        ),
        // Diğer bilgiler de burada eklenebilir
      ],
    );
  }
}
