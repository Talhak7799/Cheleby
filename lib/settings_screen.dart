import 'package:flutter/material.dart';

class SettingsScreen extends StatefulWidget {
  final Function toggleTheme;
  final bool isDarkTheme;

  SettingsScreen({required this.toggleTheme, required this.isDarkTheme});

  @override
  _SettingsScreenState createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Ayarlar')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ListTile(
              title: Text('Koyu Mod Kapat/AÇ'),
              trailing: Switch(
                value: widget.isDarkTheme,
                onChanged: (bool value) {
                  widget.toggleTheme(); // Tema değişimini sağla
                  setState(() {}); // Ekranı güncelle
                },
              ),
            ),
            // Diğer ayarlar buraya eklenebilir
          ],
        ),
      ),
    );
  }
}
