import 'package:flutter/material.dart';

class Update extends StatelessWidget {
  const Update({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Updates",
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
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
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
          ),

          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                SizedBox(
                  height: 150,
                  width: 100,
                  child: Stack(
                    children: [
                      const CircleAvatar(
                        radius: 35,
                        backgroundColor: Colors.green,
                        child: Icon(Icons.person, color: Colors.white),
                      ),
                      Stack(
  children: [
    SizedBox(
  height: 150,
  width: 100,
  child: Card(
    color: const Color.fromARGB(255, 203, 189, 189),
    child: Stack(
      children: [
        Positioned(
          top: 10,
          left: 10,
          child: Stack(
            children: [
              const CircleAvatar(
                radius: 22,
                backgroundColor: Colors.green,
                child: Icon(
                  Icons.person,
                  color: Colors.white,
                ),
              ),

              Positioned(
                bottom: 0,
                right: 0,
                child: Container(
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    shape: BoxShape.circle,
                  ),
                  child: const CircleAvatar(
                    radius: 8,
                    backgroundColor: Colors.green,
                    child: Icon(
                      Icons.add,
                      size: 12,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),

        const Positioned(
          bottom: 10,
          left: 10,
          child: Text(
            "My Status",
            style: TextStyle(
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ],
    ),
  ),
)
  ],
)
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
                            "data:image/jpeg;base64,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",
                          ),
                        ),Positioned(
  bottom: 10,
  left: 10,
  child: Text(
    "Achan",
    style: TextStyle(
      color: Color.fromARGB(255, 3, 2, 2),
      fontWeight: FontWeight.bold,
    ),
  ),
),
                      ],
                    ),
                  ),
                ),
                const SizedBox(width: 10),
                SizedBox(
                  height: 150,
                  width: 100,
                  child: Card(
                    color: const Color.fromARGB(255, 150, 142, 142),
                    child: Stack(
                      children: const [
                        CircleAvatar(
                          backgroundImage: NetworkImage(
                            "data:image/jpeg;base64,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",
                          ),
                        ),Positioned(
  bottom: 10,
  left: 10,
  child: Text(
    "Amma",
    style: TextStyle(
      color: Color.fromARGB(255, 11, 10, 10),
      fontWeight: FontWeight.bold,
    ),
  ),
),
                      ],
                    ),
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
