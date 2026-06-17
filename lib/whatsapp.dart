import 'package:flutter/material.dart';
import 'package:whatsappclone/call.dart';
import 'package:whatsappclone/chats.dart';
import 'package:whatsappclone/community.dart';
import 'package:whatsappclone/update.dart';

class Whatsapp extends StatefulWidget {
  const Whatsapp({super.key});

  @override
  State<Whatsapp> createState() => _WhatsappState();
}

class _WhatsappState extends State<Whatsapp> {
  List<Widget> screens = [chats(), Update(), Communities(), Calls()];

  int index = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      backgroundColor: Colors.white,
      body: screens[index],
      bottomNavigationBar: BottomNavigationBar(
        showUnselectedLabels: true,
        onTap: (value) {
          setState(() {
            index = value;
          });
        },
        currentIndex: index,
        selectedItemColor: const Color.fromARGB(255, 19, 236, 4),
        unselectedItemColor: const Color.fromARGB(255, 88, 98, 88),
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.chat), label: "Chats"),
          BottomNavigationBarItem(icon: Icon(Icons.update), label: "update"),
          BottomNavigationBarItem(
            icon: Icon(Icons.group),
            label: "Communities",
          ),
          BottomNavigationBarItem(icon: Icon(Icons.call), label: "Calls"),
        ],
      ),
    );
  }
}
