import 'package:app_receitas/components/public/bottom_bar.dart';
import 'package:blobs/blobs.dart';
import 'package:flutter/material.dart';
import '../components/profile_page/body.dart';
import '../components/public/center_bottom_bar.dart';
import '../constants.dart';
class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffF8F8F8),
      body: Stack(
        children: [
          Container(
            padding: EdgeInsets.only(left: 0),
              child: Blob.fromID(
                id: ['6-4-46477'],
                size: 270,
                styles:  BlobStyles(
                  color:  Color.fromARGB(255, 255, 187, 142),
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.only(left: 250),
              child: Blob.fromID(
                id: ['11-5-46477'],
                size: 300,
                styles:  BlobStyles(
                  color:  Color.fromARGB(255, 255, 187, 142),
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.only(left: 180, top: 400),
              child: Blob.fromID(
                id: ['11-5-46477'],
                size: 200,
                styles:  BlobStyles(
                  color:  Color.fromARGB(255, 255, 187, 142),
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.only(left: 0, top: 650),
              child: Blob.fromID(
                id: ['14-6-46477'],
                size: 400,
                styles:  BlobStyles(
                  color:  Color.fromARGB(255, 255, 187, 142),
                ),
              ),
            ),
          ListView(
            children: 
            <Widget>[
              text("Perfil", 35),
              const Body(),
            ],
          ),
        ]),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: CenterBottomBar(
        press: () {},
      ),
      bottomNavigationBar: BottomBar(press: () {  },),
    );
  }
}