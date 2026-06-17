import 'package:flutter/material.dart';

class Update extends StatelessWidget {
  const Update({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Updates",
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.bold,
          ),
        ),
        actions: [
          const Icon(Icons.search),
          const SizedBox(width: 5),
          PopupMenuButton(
            itemBuilder: (context) => [
              const PopupMenuItem(child: Text("Create channel")),
              const PopupMenuItem(child: Text("Status privacy")),
              const PopupMenuItem(child: Text("Starred")),
              const PopupMenuItem(child: Text("Ad preferences")),
              const PopupMenuItem(child: Text("Settings")),
            ],
          ),
        ],
      ),

      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton(
            mini: true,
            onPressed: () {},
            child: const Icon(Icons.edit),
          ),
          const SizedBox(height: 20),
          FloatingActionButton(
            onPressed: () {},
            backgroundColor: Colors.green,
            foregroundColor: Colors.white,
            child: const Icon(Icons.camera_alt_rounded),
          ),
        ],
      ),

      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Padding(
            padding: EdgeInsets.all(15.0),
            child: Text(
              "Status",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),

          Row(
            children: [
              SizedBox(
                height: 150,
                width: 100,
                child: Stack(
                  children: [
                    const CircleAvatar(
                      radius: 35,
                      backgroundColor: Colors.green,
                      child: Icon(
                        Icons.person,
                        color: Colors.white,
                      ),
                    ),
                    Positioned(
                      bottom: 0,
                      right: 20,
                      child: CircleAvatar(
                        radius: 10,
                        backgroundColor: Colors.white,
                        child: Icon(
                          Icons.add,
                          size: 15,
                          color: Colors.green,
                        ),
                      ),
                    ),
                  ],
                ),
              ),

              SizedBox(
                height: 150,
                width: 100,
                child: Card(
                  color: const Color.fromARGB(255, 203, 189, 189),
                  child: Stack(
                    children: const [
                      CircleAvatar(
                        backgroundImage: NetworkImage(
                          "https://cdn.pixabay.com/photo/2018/01/14/23/12/nature-3082832_960_720.jpg",
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}