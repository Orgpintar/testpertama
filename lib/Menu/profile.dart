
import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    const background = Color(0xFF0B1012);
    const primaryText = Color(0xFFF1F3F4);
    const secondaryText = Color(0xFF899195);
    const green = Color(0xFF20C56B);

    return Scaffold(
      backgroundColor: background,
      appBar: AppBar(
        backgroundColor: background,
        foregroundColor: primaryText,
        elevation: 0,
        title: const Text(
          'Profil',
          style: TextStyle(fontSize: 24),
        ),
        bottom: const PreferredSize(
          preferredSize: Size.fromHeight(1),
          child: Divider(
            height: 1,
            color: Color(0xFF1B2225),
          ),
        ),
      ),
      body: ListView(
        padding: EdgeInsets.zero,
        children: [
          const SizedBox(height: 48),

          // Foto profil
          Center(
            child: Stack(
              clipBehavior: Clip.none,
              children: [
                Container(
                  padding: const EdgeInsets.all(5),
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(
                      color: const Color(0xFF343638),
                      width: 7,
                    ),
                  ),
                  child: const CircleAvatar(
                    radius: 93,
                    backgroundColor: Color(0xFF202629),
                    child: Icon(
                      Icons.person,
                      size: 100,
                      color: secondaryText,
                    ),
                  ),
                ),
                Positioned(
                  right: -2,
                  bottom: -2,
                  child: Container(
                    width: 64,
                    height: 64,
                    decoration: const BoxDecoration(
                      color: green,
                      shape: BoxShape.circle,
                    ),
                    child: const Icon(
                      Icons.camera_alt_outlined,
                      size: 32,
                      color: Colors.black,
                    ),
                  ),
                ),
              ],
            ),
          ),

          const SizedBox(height: 88),

          // Informasi profil
          const _ProfileItem(
            icon: Icons.person_outline,
            title: 'Nama',
            subtitle: 'Al Fatih D Hanif',
          ),
          const _ProfileItem(
            icon: Icons.info_outline,
            title: 'Tentang',
            subtitle: 'Atur isi Tentang',
            subtitleColor: green,
          ),
          const _ProfileItem(
            icon: Icons.alternate_email,
            title: 'Nama pengguna yang dipesan',
            subtitle: 'AlFatihDiarHanif',
          ),
          const _ProfileItem(
            icon: Icons.call_outlined,
            title: 'Telepon',
            subtitle: '+62 856-4293-2274',
          ),
          const _ProfileItem(
            icon: Icons.link,
            title: 'Tautan',
            subtitle: 'Tambah tautan',
            subtitleColor: green,
          ),
        ],
      ),
    );
  }
}

class _ProfileItem extends StatelessWidget {
  final IconData icon;
  final String title;
  final String subtitle;
  final Color? subtitleColor;

  const _ProfileItem({
    required this.icon,
    required this.title,
    required this.subtitle,
    this.subtitleColor,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(48, 16, 20, 24),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(
            width: 42,
            child: Icon(
              icon,
              color: const Color(0xFF899195),
              size: 30,
            ),
          ),
          const SizedBox(width: 48),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: const TextStyle(
                    color: Color(0xFFF1F3F4),
                    fontSize: 18,
                  ),
                ),
                const SizedBox(height: 5),
                Text(
                  subtitle,
                  style: TextStyle(
                    color: subtitleColor ??
                        const Color(0xFF899195),
                    fontSize: 16,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
