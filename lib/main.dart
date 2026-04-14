import 'package:flutter/material.dart';
import 'package:salma_application_4/widgets/chip_widget.dart';
import 'package:salma_application_4/widgets/header_widget.dart';
import 'package:salma_application_4/widgets/quest_widget.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // Data quest disimpan dalam variable
  final List<Map<String, dynamic>> questList = const [
    {
      'title': 'Mengembala Domba',
      'description': 'Kumpulkan 10 domba di padang rumput',
      'reward': 100,
      'icon': Icons.pets,
      'iconColor': Colors.green,
    },
    {
      'title': 'Berburu Monster',
      'description': 'Kalahkan 5 monster liar di hutan',
      'reward': 250,
      'icon': Icons.shield,
      'iconColor': Colors.red,
    },
    {
      'title': 'Mencari Ramuan',
      'description': 'Kumpulkan 3 ramuan langka',
      'reward': 75,
      'icon': Icons.science,
      'iconColor': Colors.purple,
    },
    {
      'title': 'Latihan Memanah',
      'description': 'Latihan memanah selama 30 menit',
      'reward': 50,
      'icon': Icons.sports_gymnastics,
      'iconColor': Colors.blue,
    },
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Adventure Salma',
      home: Scaffold(
        appBar: AppBar(
          title: const Text(
            "Salma Aulia Nisa",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.deepOrange,
            ),
          ),
          backgroundColor: Colors.green,
        ),
        body: Padding(
          padding: const EdgeInsets.all(12),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const HeaderWidget(
                name: 'Salma',
                role: 'Archer',
                level: 10,
              ),
              const SizedBox(height: 12),
              Row(
                children: const [
                  ChipWidget(
                    warna: Colors.red,
                    icon: Icons.favorite,
                    label: "HP:",
                    value: 100,
                  ),
                  SizedBox(width: 12),
                  ChipWidget(
                    warna: Color.fromARGB(255, 32, 241, 13),
                    icon: Icons.bolt,
                    label: "MP:",
                    value: 99,
                  ),
                ],
              ),
              const SizedBox(height: 16),
              const Text(
                "Quest List",
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 8),
              Expanded(
                child: QuestWidget(quests: questList), // Kirim data dari luar
              ),
            ],
          ),
        ),
      ),
    );
  }
}