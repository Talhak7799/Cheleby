import 'package:flutter/material.dart';
import 'profile_info.dart'; // Profil bilgileri fonksiyonunu dahil ediyoruz
import 'profile_picture.dart'; // Profil fotoğrafı fonksiyonunu dahil ediyoruz

class ProfileScreen extends StatelessWidget {
  // Profil bilgileri
  final String profileImageUrl = 'https://www.example.com/profile.jpg'; // Burada profil fotoğrafı URL'si olacak
  final String name = 'İbrahim talha ';
  final String surname = 'Er';
  final String email = 'ibrahimtalha@gmail.com';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Profil')), // AppBar başlığı
      body: Padding(
        padding: const EdgeInsets.all(16.0), // İçerik etrafında boşluk
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start, // Sol hizalama
          children: [
            // Profil fotoğrafını buraya ekliyoruz
            ProfilePicture(imageUrl: profileImageUrl),
            SizedBox(height: 20), // Fotoğraf ve bilgiler arasına boşluk
            // Profil bilgilerini buraya ekliyoruz
            ProfileInfo(name: name, surname: surname, email: email),
          ],
        ),
      ),
    );
  }
}

