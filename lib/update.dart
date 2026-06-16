import 'package:flutter/material.dart';

class Update extends StatelessWidget {
  const Update({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Updates",
          style: TextStyle(
            color: const Color.fromARGB(255, 0, 0, 0),
            fontWeight: FontWeight.bold,
          ),
        ),
        actions: [
          Icon(Icons.search),SizedBox(width: 5,),
          PopupMenuButton(
            itemBuilder: (context) => [
              PopupMenuItem(child: Text("Create channel")),
              PopupMenuItem(child: Text("Status privacy")),
              PopupMenuItem(child: Text("Starred")),
              PopupMenuItem(child: Text("Ad preferences")),
              PopupMenuItem(child: Text("Settings")),
            ],
          ),
        ],
      ),body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Text("status",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold)),
      ),);
    
  }
}