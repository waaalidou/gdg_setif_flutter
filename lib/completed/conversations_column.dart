import 'package:flutter/material.dart';

class ConversationsColumn extends StatelessWidget {
  final List conversations;

  const ConversationsColumn({super.key, required this.conversations});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: List.generate(
          conversations.length,
          (index) => InkWell(
            onTap: (){},
            child: ListTile(
              leading: CircleAvatar(
                radius: 25,
                backgroundImage: NetworkImage(conversations[index]["imageUrl"]),
              ),
              title: Text(
                conversations[index]["name"],
                style: TextStyle(
                  fontWeight: conversations[index]["isRead"]
                      ? FontWeight.normal
                      : FontWeight.bold,
                ),
              ),
              subtitle: Text(conversations[index]["message"],
                style: TextStyle(
                  fontWeight: conversations[index]["isRead"]
                      ? FontWeight.normal
                      : FontWeight.bold,
                ),
              ),
              trailing: Text(conversations[index]["time"], style: TextStyle(
                  fontWeight: conversations[index]["isRead"]
                      ? FontWeight.normal
                      : FontWeight.bold,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
