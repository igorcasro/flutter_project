import 'package:flutter/material.dart';

class ProfileCard extends StatelessWidget {
  const ProfileCard({
    Key? key
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20),
      ),
      child: Container(
        height: 180,
        
        child: Row(mainAxisAlignment: MainAxisAlignment.start, children: [
          Container(
            width: 120,
            height: 120,
            margin: const EdgeInsets.only(left: 10, right: 10, top: 10, bottom: 10),
            decoration: BoxDecoration(
              image: const DecorationImage(
                image: AssetImage('assets/images/people/person.jpg'), fit: BoxFit.fill
              ),
              borderRadius: BorderRadius.circular(100)
            ), 
            child: InkWell(
            splashColor: const Color.fromARGB(255, 255, 177, 113).withAlpha(30),
            onTap: () {
              debugPrint('Card tapped.');
            },
        )
          ),
          SizedBox(width: 15,),
          Column(crossAxisAlignment: CrossAxisAlignment.start, children: const <Widget>[
            SizedBox(height: 40,),
            Text(
              "Jana",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 40,
                fontWeight: FontWeight.bold,
                color: Color.fromARGB(255, 71, 71, 101),
              ),
            ),
            
            Text(
              "Juquiá, SP",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.bold,
                color: Color.fromARGB(255, 107, 107, 136),
              ),
            ),
            SizedBox(height: 5),
            Text(
              "jana@exemplo.com",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.normal,
                color: Color.fromARGB(255, 71, 71, 101),
              ),
            ),
          ],),
          ]
      )
      )
      );
  }
}