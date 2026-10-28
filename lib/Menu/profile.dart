
import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    const textColor = Color(0xFF17232B);
    const subTextColor = Color(0xFF667781);
    const greenColor = Color(0xFF008F72);

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: greenColor,
        foregroundColor: Colors.white,
        elevation: 0,
        title: const Text('Profil'),
      ),
      body: ListView(
        children: [
          const SizedBox(height: 28),

          // Foto profil dan informasi singkat
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              children: [
                CircleAvatar(
                  radius: 42,
                  backgroundColor: Color(0xFFDCE3E7),
                  child: Icon(
                    Icons.person,
                    size: 52,
                    color: Colors.white,
                  ),
                ),
                SizedBox(width: 20),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Diar Hanif',
                        style: TextStyle(
                          fontSize: 23,
                          fontWeight: FontWeight.w500,
                          color: textColor,
                        ),
                      ),
                      SizedBox(height: 6),
                      Text(
                        'Hai, saya menggunakan WhatsApp.',
                        style: TextStyle(
                          fontSize: 14,
                          color: subTextColor,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),

          const SizedBox(height: 30),

          // Informasi profil
          const _ProfileItem(
            icon: Icons.person_outline,
            title: 'Nama',
            subtitle: 'Diar Hanif',
          ),
          const _ProfileItem(
            icon: Icons.info_outline,
            title: 'Tentang',
            subtitle: 'Hai, saya menggunakan WhatsApp.',
          ),
          const _ProfileItem(
            icon: Icons.phone_outlined,
            title: 'Nomor telepon',
            subtitle: '+62 812 3456 7890',
          ),

          const SizedBox(height: 16),
          const Divider(
            thickness: 6,
            color: Color(0xFFF4F6F7),
          ),

          // Pengaturan profil
          const _ProfileItem(
            icon: Icons.shield_outlined,
            title: 'Privasi',
          ),
          const _ProfileItem(
            icon: Icons.face_outlined,
            title: 'Avatar',
          ),
          const _ProfileItem(
            icon: Icons.photo_outlined,
            title: 'Foto profil',
          ),
          const _ProfileItem(
            icon: Icons.auto_awesome_outlined,
            title: 'Status',
          ),
          const _ProfileItem(
            icon: Icons.lock_outline,
            title: 'Keamanan',
          ),
        ],
      ),
    );
  }
}

class _ProfileItem extends StatelessWidget {
  final IconData icon;
  final String title;
  final String? subtitle;

  const _ProfileItem({
    required this.icon,
    required this.title,
    this.subtitle,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      contentPadding: const EdgeInsets.symmetric(
        horizontal: 20,
        vertical: 7,
      ),
      leading: Icon(
        icon,
        color: const Color(0xFF71858D),
        size: 25,
      ),
      title: Text(
        title,
        style: const TextStyle(
          fontSize: 16,
          color: Color(0xFF17232B),
        ),
      ),
      subtitle: subtitle == null
          ? null
          : Text(
              subtitle!,
              style: const TextStyle(
                fontSize: 14,
                color: Color(0xFF667781),
              ),
            ),
      trailing: const Icon(
        Icons.chevron_right,
        color: Color(0xFF91A1A8),
      ),
    );
  }
}
