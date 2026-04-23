import 'package:flutter/material.dart';
import 'package:salma_application_4/pages/login_page.dart';
import 'package:salma_application_4/widgets/chip_widget.dart';
import 'package:salma_application_4/widgets/header_widget.dart';
import 'package:salma_application_4/widgets/quest_widget.dart';

void main() {
  runApp(MaterialApp(
    title: 'Adventure Salma',
    initialRoute: "/login",
    onGenerateRoute: (datas) {
      if (datas.name == "/login") {
        return MaterialPageRoute(builder: (_) => const LoginPage());
      }

      if (datas.name == "/") {
        if (datas.arguments == null || datas.arguments is! Map) {
          return MaterialPageRoute(builder: (_) => const LoginPage());
        }

        final args = Map<String, dynamic>.from(datas.arguments as Map);
        return MaterialPageRoute(
          builder: (_) => HomePage(userData: args),
        );
      }

      // fallback biar ga crash
      return MaterialPageRoute(builder: (_) => const LoginPage());
    },
  ));
}

class HomePage extends StatefulWidget {
  final Map<String, dynamic> userData;

  const HomePage({
    super.key,
    required this.userData,
  });

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    final String name = widget.userData['name'] ?? 'Unknown';
    final int level = (widget.userData['level'] as int?) ?? 0;
    final String rank = widget.userData['rank'] ?? '-';
    final String role = widget.userData['role'] ?? '-';

    return Scaffold(
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
            HeaderWidget(
              name: name,
              role: role,
              level: level,
              rank: rank,
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
                ChipWidget(
                  warna: Color.fromARGB(255, 32, 241, 13),
                  icon: Icons.accessibility_new,
                  label: "Energy:",
                  value: 99,
                ),
              ],
            ),
            const SizedBox(height: 12),
            const Text("Quest List"),
            QuestWidget(),
          ],
        ),
      ),
    );
  }
}