import 'package:chat_app/completed/conversations.dart';
import 'package:chat_app/completed/parameters.dart';
import 'package:flutter/material.dart';

class AppHomeScreen extends StatefulWidget {
  const AppHomeScreen({super.key});

  @override
  State<AppHomeScreen> createState() => _AppHomeScreenState();
}

class _AppHomeScreenState extends State<AppHomeScreen> {
  int index = 0;
  final List<Widget> screens = [
    const ConversationsScreen(),
    const ParametersScreen()
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screens[index],
      bottomNavigationBar: BottomNavigationBar(
        onTap: (value) {
          setState(() {
            index = value;
          });
        },
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.message),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.account_box),
            label: "Parameters",
          ),
        ],
        currentIndex: index,
      ),
    );
  }
}
