import 'package:flutter/material.dart';

class ChatScreen extends StatefulWidget {
  const ChatScreen({super.key});

  @override
  State<ChatScreen> createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  List<dynamic> chats = [
    {
      'name': 'Capstone 2',
      'message': 'Arwa MEST: okay',
    },
    {
      'name': 'Muka\'sFamily',
      'message': 'Sis: sawa',
    },
    {
      'name': 'IoT Africa Tribe',
      'message': '~Love\'s Design: Noted',
    },
    {
      'name': 'Nile House MEST 2024',
      'message': 'PERIS MEST: noted with thanks',
      'image':
          'miro.medium.com/v2/resize:fit:1200/1*CuEGuQDBeTikDVaK1WooUA.jpeg'
    },
    {
      'name': 'INFORMATIQUE RDC',
      'message': 'Lionel: Certains',
      'image':
          'https://www.shutterstock.com/image-illustration/flag-democratic-republic-congo-drc-600nw-2349264151.jpg'
    },
    {
      'name': 'Hellen',
      'message': 'Je t\'aime aussi',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Row(
              children: [
                Container(
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: Colors.blue,
                    ),
                    borderRadius: BorderRadius.circular(30.0),
                  ),
                  child: const Icon(
                    Icons.more_horiz,
                    color: Colors.blue,
                  ),
                ),
                const SizedBox(
                  width: 250,
                ),
                const Icon(
                  Icons.camera_alt_outlined,
                  color: Colors.blue,
                ),
                const SizedBox(
                  width: 50,
                ),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30.0),
                    color: Colors.blue,
                  ),
                  child: const Icon(Icons.add),
                ),
              ],
            ),
          )
        ],
      ),
      body: Container(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            const Text(
              "Chats",
              style: TextStyle(
                fontSize: 35.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(
              height: 13.0,
            ),
            SizedBox(
              height: 40.0,
              child: TextField(
                decoration: InputDecoration(
                  prefixIcon: const Icon(
                    Icons.search,
                    size: 18.0,
                  ),
                  prefixIconColor: const Color.fromARGB(255, 112, 111, 111),
                  hintText: 'Search',
                  hintStyle: const TextStyle(
                      color: Color.fromARGB(255, 112, 111, 111),
                      fontSize: 14.0),
                  border: OutlineInputBorder(
                    borderSide: BorderSide.none,
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  filled: true,
                  fillColor: Colors.white10,
                ),
              ),
            ),
            Expanded(
              child: ListView.separated(
                itemCount: chats.length,
                separatorBuilder: (BuildContext context, int position) {
                  return const Divider(
                    height: 1.0,
                  );
                },
                itemBuilder: (BuildContext context, int position) {
                  dynamic data = chats[position];
                  return ListTile(
                    leading: const CircleAvatar(
                      backgroundImage: NetworkImage(
                          "https://www.shutterstock.com/image-vector/black-woman-smiling-portrait-vector-600nw-2281497689.jpg"),
                    ),
                    title: Text(
                      data['name'],
                      style: const TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20.0,
                          color: Colors.white),
                    ),
                    subtitle: Text(
                      data['message'],
                      style: const TextStyle(color: Colors.white70),
                    ),
                    trailing: const Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Text(
                          "5:52 PM",
                          style: TextStyle(
                            fontSize: 10.0,
                            color: Colors.blue,
                          ),
                        ),
                        CircleAvatar(
                          backgroundColor: Colors.blue,
                          radius: 10.0,
                          child: Text(
                            "4",
                            style: TextStyle(
                              color: Color(0xFF0A0E21),
                              fontSize: 10.0,
                            ),
                          ),
                        )
                      ],
                    ),
                  );
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
