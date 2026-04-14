import 'package:flutter/material.dart';

class QuestWidget extends StatelessWidget {
  // Data quest disimpan langsung di sini sebagai parameter
  final List<Map<String, dynamic>> quests;
  
  const QuestWidget({super.key, required this.quests});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: quests.length,
      itemBuilder: (context, index) {
        final quest = quests[index];
        return InkWell(
          onTap: () {
            print("Quest tapped: ${quest['title']}");
          },
          borderRadius: BorderRadius.circular(14),
          child: Padding(
            padding: const EdgeInsets.only(bottom: 8),
            child: Ink(
              padding: const EdgeInsets.all(12),
              decoration: BoxDecoration(
                color: Colors.grey.withAlpha(14),
                borderRadius: BorderRadius.circular(14),
                border: Border.all(color: Colors.black.withAlpha(20)),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black54.withAlpha(20),
                    blurRadius: 10,
                    offset: const Offset(0, 4),
                  )
                ],
              ),
              child: Row(
                children: [
                  Container(
                    width: 40,
                    height: 40,
                    decoration: BoxDecoration(
                      color: (quest['iconColor'] as Color).withAlpha(30),
                      borderRadius: BorderRadius.circular(14),
                    ),
                    child: Icon(quest['icon'], color: quest['iconColor']),
                  ),
                  const SizedBox(width: 12),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          quest['title'],
                          style: const TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 16,
                          ),
                        ),
                        const SizedBox(height: 4),
                        Text(
                          quest['description'] ?? 'No description',
                          style: TextStyle(
                            color: Colors.grey.shade600,
                            fontSize: 12,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 12,
                      vertical: 6,
                    ),
                    decoration: BoxDecoration(
                      color: Colors.orange.withAlpha(30),
                      borderRadius: BorderRadius.circular(20),
                      border: Border.all(color: Colors.orange.withAlpha(50)),
                    ),
                    child: Column(
                      children: [
                        const Icon(
                          Icons.star,
                          size: 16,
                          color: Colors.orange,
                        ),
                        const SizedBox(height: 2),
                        Text(
                          "${quest['reward']}",
                          style: const TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 12,
                            color: Colors.orange,
                          ),
                        ),
                        const Text(
                          "XP",
                          style: TextStyle(
                            fontSize: 8,
                            color: Colors.orange,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}