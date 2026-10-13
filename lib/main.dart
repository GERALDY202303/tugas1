import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: CobanGlotak(),
    );
  }
}

class CobanGlotak extends StatelessWidget {
  const CobanGlotak({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Coban Glotak'),
        backgroundColor: const Color(0xff214b35),
        foregroundColor: Colors.white,
      ),
      body: Stack(
        children: [
          // Background foto p.jpg
          Positioned.fill(
            child: Image.asset(
              'asset/p.jpg',
              fit: BoxFit.cover,
            ),
          ),

          // Background dibuat lebih gelap
          Positioned.fill(
            child: Container(
              color: Colors.black.withOpacity(0.35),
            ),
          ),

          // Konten halaman
          SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Image.asset(
                  'asset/coban.jpg',
                  width: double.infinity,
                  height: 230,
                  fit: BoxFit.cover,
                ),
                Container(
                  width: double.infinity,
                  color: Colors.white.withOpacity(0.80),
                  padding: const EdgeInsets.all(20),
                  child: const Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Wisata Alam Malang',
                        style: TextStyle(
                          color: Colors.green,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 8),
                      Text(
                        'Keindahan Coban Glotak',
                        style: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 10),
                      Text(
                        'Coban Glotak merupakan wisata air terjun '
                        'di Kecamatan Wagir, Kabupaten Malang. '
                        'Tempat ini memiliki pemandangan alam yang '
                        'indah, udara sejuk, dan pepohonan hijau.',
                        style: TextStyle(
                          fontSize: 14,
                          height: 1.6,
                        ),
                      ),
                      SizedBox(height: 20),
                      Text(
                        'Aktivitas Wisata',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 12),
                      ActivityTile(
                        icon: Icons.camera_alt,
                        title: 'Fotografi Alam',
                      ),
                      ActivityTile(
                        icon: Icons.hiking,
                        title: 'Jelajah Alam',
                      ),
                      ActivityTile(
                        icon: Icons.groups,
                        title: 'Liburan Bersama',
                      ),
                      SizedBox(height: 15),
                      Text(
                        'Lokasi',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 8),
                      Row(
                        children: [
                          Icon(
                            Icons.location_on,
                            color: Color(0xff214b35),
                          ),
                          SizedBox(width: 8),
                          Expanded(
                            child: Text(
                              'Wagir, Kabupaten Malang, Jawa Timur',
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 20),
                      Text(
                        'Contact',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 10),
                      Row(
                        children: [
                          Icon(
                            Icons.email,
                            color: Color(0xff214b35),
                          ),
                          SizedBox(width: 10),
                          Text('geraldy@email.com'),
                        ],
                      ),
                      SizedBox(height: 10),
                      Row(
                        children: [
                          Icon(
                            Icons.phone,
                            color: Color(0xff214b35),
                          ),
                          SizedBox(width: 10),
                          Text('08xxxxxxxxxx'),
                        ],
                      ),
                    ],
                  ),
                ),
                Container(
                  width: double.infinity,
                  padding: const EdgeInsets.all(18),
                  color: const Color(0xff214b35),
                  child: const Text(
                    'Created by Geraldy',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.white,
                    ),
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

class ActivityTile extends StatelessWidget {
  final IconData icon;
  final String title;

  const ActivityTile({
    super.key,
    required this.icon,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      contentPadding: EdgeInsets.zero,
      leading: Icon(
        icon,
        color: const Color(0xff214b35),
      ),
      title: Text(title),
    );
  }
}
