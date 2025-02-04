import 'package:flutter/material.dart';

class ProfilePicture extends StatelessWidget {
  final String imageUrl;

  ProfilePicture({required this.imageUrl});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: CircleAvatar(
        radius: 50, // Fotoğrafın boyutu
        backgroundImage: NetworkImage(imageUrl), // URL'den profil fotoğrafını al
      ),
    );
  }
}
