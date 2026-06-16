import 'package:flutter/material.dart';

class Calls extends StatelessWidget {
  const Calls({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Calls",
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
        ),
        actions: [Icon(Icons.search),SizedBox(width: 5,),
          PopupMenuButton(
            itemBuilder: (context) => [
              PopupMenuItem(child: Text(("Crear call log"))),
              PopupMenuItem(child: Text(("Scheduled calls"))),
              PopupMenuItem(child: Text(("Settings"))),
              
            ],
          ),],
      ),
    );
  }
}