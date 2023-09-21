import 'package:camera/camera.dart';
import 'package:flutter/material.dart';
import 'dart:io';

class PreviewPage extends StatelessWidget {
  const PreviewPage({Key? key, required this.picture}) : super(key: key);

  final XFile picture;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Color(0xff121b22),
      appBar: AppBar(
        elevation: 2,
        backgroundColor: const Color(0xff1f2c34),
        title: const Text(
          "WhatsApp Camera Preview",
          style: TextStyle(
            color: Color(0xff818e96),
          ),
        ),
      ),
      body: Center(
        child: Column(mainAxisSize: MainAxisSize.min, children: [
          Image.file(File(picture.path), fit: BoxFit.cover, width: 300),
          const SizedBox(height: 24),
          Text(picture.name, style: TextStyle(color: Colors.white),)
        ]),
      ),
    );
  }
}