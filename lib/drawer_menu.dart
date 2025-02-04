import 'package:flutter/material.dart';
import 'home_screen.dart';
import 'profile_screen.dart';
import 'settings_screen.dart';
import 'about_screen.dart';

Widget buildDrawer(BuildContext context, bool isDarkTheme, Function toggleTheme) {
  return Drawer(
    child: ListView(
      padding: EdgeInsets.zero,
      children: [
        DrawerHeader(
          decoration: BoxDecoration(color: Colors.orange),
          child: Text('Menü', style: TextStyle(fontSize: 24, color: Colors.white)),
        ),
        buildDrawerItem(Icons.home, 'Ana Sayfa', context, HomeScreen(toggleTheme: toggleTheme, isDarkTheme: isDarkTheme)),
        buildDrawerItem(Icons.person, 'Profil', context, ProfileScreen()),
        buildDrawerItem(Icons.settings, 'Ayarlar', context, SettingsScreen(toggleTheme: toggleTheme, isDarkTheme: isDarkTheme)),
        buildDrawerItem(Icons.info, 'Hakkında', context, AboutScreen()),
        buildDrawerItem(Icons.exit_to_app, 'Çıkış Yap', context, null),
      ],
    ),
  );
}

Widget buildDrawerItem(IconData icon, String title, BuildContext context, Widget? page) {
  return ListTile(
    leading: Icon(icon),
    title: Text(title),
    onTap: () {
      Navigator.pop(context);
      if (page != null) {
        Navigator.push(context, MaterialPageRoute(builder: (context) => page));
      }
    },
  );
}
