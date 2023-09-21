import 'package:flutter/material.dart';

class CallsLogScreen extends StatefulWidget {
  const CallsLogScreen({super.key});

  @override
  State<CallsLogScreen> createState() => _CallsLogScreenState();
}

class _CallsLogScreenState extends State<CallsLogScreen> {
  @override
  Widget build(BuildContext context) {

    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(useMaterial3: true),
      home: Scaffold(
          backgroundColor: const Color(0xff121b22),
          body: SizedBox(
            width: width,
            height: height,
            child: ListView.builder(
              // addAutomaticKeepAlives: true,
                itemCount: 10,
                itemBuilder: (context, index) {
                  return const ListTile(
                    leading: CircleAvatar(
                      backgroundImage: NetworkImage("https://lh3.googleusercontent.com/a/ACg8ocKf_wCoGiAMcoqwllXRpBIdT7p6Uxos4P3qUqLoKSBENw=s288-c-no"),
                      backgroundColor: Colors.black,
                    ),
                    title: Text(
                      "Hamza Shakeel",
                      style: TextStyle(
                        color: Color(0xffebf2f9),
                      ),
                    ),
                    subtitle: Row(
                      children: [
                        Padding(
                          padding: EdgeInsets.only(right: 5, ),
                          child: Icon(Icons.call_made_rounded, color: Color(0xff01a883),),
                        ),
                        Text(
                          "September 18, 1:48 PM",
                          style: TextStyle(
                            color: Color(0xffebf2f9),
                          ),
                        ),
                      ],
                    ),
                    trailing: Icon(Icons.call, color: Color(0xff01a883),),
                  );
                }),
          )),
    );
  }
}
