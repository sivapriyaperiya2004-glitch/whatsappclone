import 'package:flutter/material.dart';

class Communities extends StatelessWidget {
  const Communities({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Communities",
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
        ),
        actions: [
          PopupMenuButton(
            itemBuilder: (context) => [
              PopupMenuItem(child: Text("Settings")),
              PopupMenuItem(child: Text("Switch account")),
            ],
          ),
        ],
      ),
      body: ListView(
        children: [
          ListTile(
            title: Text(
              "New Community",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            leading: Stack(
              children: [
                Container(
                  height: 55,
                  width: 55,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.grey,
                  ),
                  child: Icon(Icons.groups, color: Colors.white),
                ),
                Positioned(
                  right: 0,
                  bottom: 0,
                  child: CircleAvatar(
                    radius: 10,
                    backgroundColor: Colors.green,
                    child: Icon(Icons.add, size: 14, color: Colors.white),
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
