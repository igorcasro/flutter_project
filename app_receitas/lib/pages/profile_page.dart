import 'package:blobs/blobs.dart';
import 'package:flutter/material.dart';
import '../components/profile_page/body.dart';
import '../constants.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffF8F8F8),
      body: Stack(children: [
        Container(
          padding: const EdgeInsets.only(left: 0),
          child: Blob.fromID(
            id: const ['6-4-46477'],
            size: 270,
            styles: BlobStyles(
              color: const Color.fromARGB(255, 255, 187, 142),
            ),
          ),
        ),
        Container(
          padding: const EdgeInsets.only(left: 250),
          child: Blob.fromID(
            id: const ['11-5-46477'],
            size: 300,
            styles: BlobStyles(
              color: const Color.fromARGB(255, 255, 187, 142),
            ),
          ),
        ),
        Container(
          padding: const EdgeInsets.only(left: 180, top: 400),
          child: Blob.fromID(
            id: const ['11-5-46477'],
            size: 200,
            styles: BlobStyles(
              color: const Color.fromARGB(255, 255, 187, 142),
            ),
          ),
        ),
        Container(
          padding: const EdgeInsets.only(left: 0, top: 650),
          child: Blob.fromID(
            id: const ['14-6-46477'],
            size: 400,
            styles: BlobStyles(
              color: const Color.fromARGB(255, 255, 187, 142),
            ),
          ),
        ),
        ListView(
          children: <Widget>[
            text("Perfil", 35),
            const Body(),
          ],
        ),
      ]),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}
