import 'package:flutter/material.dart';
import 'package:whatsapp_clone_iphone_style/call_screen.dart';

class AllChatScreen extends StatefulWidget {
  const AllChatScreen({super.key});

  @override
  State<AllChatScreen> createState() => _AllChatScreenState();
}

class _AllChatScreenState extends State<AllChatScreen> {
  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(useMaterial3: true),
      home: Scaffold(
        backgroundColor: const Color(0xff121b22),
        body: Column(
          children: [
            SizedBox(
              width: width,
              // margin: EdgeInsets.only(bottom: 10),
              height: height * 0.08,
              // color: Colors.red,
              child: Row(
                children: [
                  const Padding(
                    padding: EdgeInsets.only(left: 27, right: 28),
                    child: Icon(
                      Icons.archive_outlined,
                      color: Color(0xff85929a),
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(right: 8.0),
                    child: Text(
                      "Archived",
                      style: TextStyle(
                        color: Color(0xff85929a),
                        fontSize: 17,
                      ),
                    ),
                  ),
                  SizedBox(width: width-180,),

                  const Text(
                    "1",
                    style: TextStyle(
                      color: Color(0xff01a883),
                    ),
                  ),
                ],
              ),
            ),
            customListTile(context, contactName: 'Hamza Shakeel', lastSms: 'How are you?', sendTime: "3:43", amORpm: 'am'),
          ],
        ),
      ),
    );
  }
}

Widget customListTile(BuildContext context,
    {required String contactName, required String lastSms, required String sendTime, required String amORpm}) {
  return ListTile(
    onTap: () {
      Navigator.of(context).push(
          MaterialPageRoute(builder: (context) => const CallsLogScreen()));
    },
    leading: const CircleAvatar(
      backgroundImage: NetworkImage(
          "https://lh3.googleusercontent.com/a/ACg8ocKf_wCoGiAMcoqwllXRpBIdT7p6Uxos4P3qUqLoKSBENw=s288-c-no"),
      backgroundColor: Colors.black,
      radius: 24,
    ),
    title: Text(
      contactName,
      style: const TextStyle(
        color: Color(0xffd9e0e8),
        fontSize: 16,
      ),
    ),
    subtitle: Text(
      lastSms,
      style: const TextStyle(
        color: Color(0xffd9e0e8),
      ),
    ),
    trailing: Text(
      "$sendTime ${amORpm.toUpperCase()}",
      style: const TextStyle(
        color: Color(0xffd9e0e8),
      ),
    ),
  );
}
