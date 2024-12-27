import 'package:flutter/material.dart';


class SettingsScreen extends StatelessWidget {
  const SettingsScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Pengaturan'),
      ),
      body: ListView(
        children: [
          ListTile(
            leading: Icon(Icons.color_lens),
            title: Text('Ubah Tema'),
            onTap: () {
              // Implementasi untuk mengubah tema
            },
          ),
          ListTile(
            leading: Icon(Icons.person),
            title: Text('Kelola Akun'),
            onTap: () {
              // Implementasi untuk mengelola akun
            },
          ),
          ListTile(
            leading: Icon(Icons.info),
            title: Text('Tentang Aplikasi'),
            onTap: () {
              // Implementasi untuk menampilkan informasi tentang aplikasi
            },
          ),
        ],
      ),
    );
  }
}
class SettingsProvider with ChangeNotifier {
  bool isDarkMode = false;

  void toggleDarkMode() {
    isDarkMode = !isDarkMode;
    notifyListeners();
  }
}

