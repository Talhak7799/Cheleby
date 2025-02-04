import 'package:flutter/material.dart';
import 'drawer_menu.dart';

class HomeScreen extends StatelessWidget {
  final Function toggleTheme;
  final bool isDarkTheme;

  HomeScreen({required this.toggleTheme, required this.isDarkTheme});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Cheleby')),
      drawer: buildDrawer(context, isDarkTheme, toggleTheme), // Tema geçişi için fonksiyonu geçiriyoruz
      body: Center(
        child: Text('Ana Sayfa İçeriği', style: TextStyle(fontSize: 22)),
      ),
    );
  }
}
