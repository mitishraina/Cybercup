import 'package:flutter/material.dart';
import 'package:daducare/screens/chat_screen.dart';
import 'package:daducare/screens/information_screen.dart';
import 'package:daducare/screens/home_page.dart';

class CustomNavbar extends StatelessWidget {
  const CustomNavbar({super.key});

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      items: const <BottomNavigationBarItem>[
        BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
        BottomNavigationBarItem(icon: Icon(Icons.chat), label: 'Community'),
        BottomNavigationBarItem(icon: Icon(Icons.info), label: 'Info'),
      ],
      onTap: (index) {
        switch (index) {
          case 0:
            Navigator.push(context, MaterialPageRoute(builder: (context) => const HomePage()));
            break;
          case 1:
            Navigator.push(context, MaterialPageRoute(builder: (context) => const ChatScreen()));
            break;
          case 2:
            Navigator.push(context, MaterialPageRoute(builder: (context) => const InformationScreen()));
            break;
        }
      },
    );
  }
}
