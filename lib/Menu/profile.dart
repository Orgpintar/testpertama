
import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF0B1012),
      appBar: AppBar(
        backgroundColor: const Color(0xFF0B1012),
        foregroundColor: Colors.white,
        title: const Text('Profil'),
        elevation: 0,
      ),
      body: ListView(
        children: [
          const SizedBox(height: 45),

          // Foto profil
          Center(
            child: Stack(
              children: [
                const CircleAvatar(
                  radius: 95,
                  backgroundColor: Color(0xFF303638),
                  child: Icon(
                    Icons.person,
                    size: 100,
                    color: Colors.white,
                  ),
                ),
                Positioned(
                  right: 0,
                  bottom: 0,
                  child: CircleAvatar(
                    radius: 31,
                    backgroundColor: Colors.green,
                    child: const Icon(
                      Icons.camera_alt_outlined,
                      color: Colors.black,
                      size: 30,
                    ),
                  ),
                ),
              ],
            ),
          ),

          const SizedBox(height: 80),

          // Nama
          const ListTile(
            contentPadding: EdgeInsets.symmetric(
              horizontal: 50,
              vertical: 10,
            ),
            leading: Icon(
              Icons.person_outline,
              color: Colors.grey,
              size: 30,
            ),
            title: Text(
              'Nama',
              style: TextStyle(color: Colors.white, fontSize: 18),
            ),
            subtitle: Text(
              'Al Fatih D Hanif',
              style: TextStyle(color: Colors.grey, fontSize: 16),
            ),
          ),

          // Tentang
          const ListTile(
            contentPadding: EdgeInsets.symmetric(
              horizontal: 50,
              vertical: 10,
            ),
            leading: Icon(
              Icons.info_outline,
              color: Colors.grey,
              size: 30,
            ),
            title: Text(
              'Tentang',
              style: TextStyle(color: Colors.white, fontSize: 18),
            ),
            subtitle: Text(
              'Atur isi Tentang',
              style: TextStyle(color: Colors.green, fontSize: 16),
            ),
          ),

          // Nama pengguna
          const ListTile(
            contentPadding: EdgeInsets.symmetric(
              horizontal: 50,
              vertical: 10,
            ),
            leading: Icon(
              Icons.alternate_email,
              color: Colors.grey,
              size: 30,
            ),
            title: Text(
              'Nama pengguna yang dipesan',
              style: TextStyle(color: Colors.white, fontSize: 18),
            ),
            subtitle: Text(
              'AlFatihDiarHanif',
              style: TextStyle(color: Colors.grey, fontSize: 16),
            ),
          ),

          // Telepon
          const ListTile(
            contentPadding: EdgeInsets.symmetric(
              horizontal: 50,
              vertical: 10,
            ),
            leading: Icon(
              Icons.phone_outlined,
              color: Colors.grey,
              size: 30,
            ),
            title: Text(
              'Telepon',
              style: TextStyle(color: Colors.white, fontSize: 18),
            ),
            subtitle: Text(
              '+62 856-4293-2274',
              style: TextStyle(color: Colors.grey, fontSize: 16),
            ),
          ),

          // Tautan
          const ListTile(
            contentPadding: EdgeInsets.symmetric(
              horizontal: 50,
              vertical: 10,
            ),
            leading: Icon(
              Icons.link,
              color: Colors.grey,
              size: 30,
            ),
            title: Text(
              'Tautan',
              style: TextStyle(color: Colors.white, fontSize: 18),
            ),
            subtitle: Text(
              'Tambah tautan',
              style: TextStyle(color: Colors.green, fontSize: 16),
            ),
          ),
        ],
      ),
    );
  }
}
