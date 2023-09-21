import 'package:camera/camera.dart';
import 'package:flutter/material.dart';
import 'package:whatsapp_clone_iphone_style/call_screen.dart';
import 'package:whatsapp_clone_iphone_style/community_screen.dart';
import 'package:whatsapp_clone_iphone_style/status_screen.dart';

import 'camera_page.dart';
import 'all_chats_screen.dart';

void main() {
  runApp(
    const MaterialApp(
      // theme: ThemeData(
      //   popupMenuTheme: PopupMenuThemeData(
      //     shape: RoundedRectangleBorder(
      //       borderRadius: BorderRadius.circular(20),
      //     ),
      //     color: Colors.blue,
      //   ),
      // ),

      debugShowCheckedModeBanner: false,
      home: Home(),
    ),
  );
}

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {


  @override
  Widget build(BuildContext context) {

    return DefaultTabController(
      length: 4,
      child: Scaffold(
        backgroundColor: const Color(0xff121b22),
        appBar: AppBar(
          elevation: 2,
          backgroundColor: const Color(0xff1f2c34),
          title: const Text(
            "WhatsApp",
            style: TextStyle(
              color: Color(0xff818e96),
            ),
          ),
          actions: [
            Padding(
              padding: const EdgeInsets.all(10),
              child: GestureDetector(
                onTap: () async {
                  await availableCameras().then((value) => Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (_) => CameraPage(cameras: value))));
                },
                child: const Icon(
                  Icons.camera_alt_rounded,
                  color: Color(0xff818e96),
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(10),
              child: Icon(
                Icons.search,
                color: Color(0xff818e96),
              ),
            ),
            PopupMenuButton(
              elevation: 10,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
              icon: const Icon(
                Icons.more_vert_rounded,
                color: Color(0xff818e96),
              ),
              itemBuilder: (context) => [
                const PopupMenuItem(
                  value: 1,
                  child: Text("New group"),
                ),
                const PopupMenuItem(
                  value: 2,
                  child: Text("Starred messages"),
                ),
                const PopupMenuItem(
                  value: 3,
                  child: Text("Settings"),
                ),
              ],
            ),
          ],
          bottom: const TabBar(tabs: [
            Tab(
              child: Icon(
                Icons.groups,
                color: Color(0xff818e96),
              ),
            ),
            Tab(
              child: Text(
                "Chats",
                style: TextStyle(
                  color: Color(0xff818e96),
                  fontSize: 15,
                ),
              ),
            ),
            Tab(
              child: Text(
                "Status",
                style: TextStyle(
                  color: Color(0xff818e96),
                  fontSize: 15,
                ),
              ),
            ),
            Tab(
              child: Text(
                "Calls",
                style: TextStyle(
                  color: Color(0xff818e96),
                  fontSize: 15,
                ),
              ),
            ),
          ]),
        ),
        body: const TabBarView(children: [
          CommunityScreen(),
          AllChatScreen(),
          StatusScreen(),
          CallsLogScreen(),
        ]),
      ),
    );
  }
}
