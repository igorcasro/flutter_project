import 'package:app_receitas/constants.dart';
import 'package:flutter/material.dart';

class OptionsList extends StatelessWidget {
  const OptionsList({
    Key? key
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Flexible(child: 
      ListView(  
            children: [  
              text("Opções", 30),
              SizedBox(height: 10,),
              const Card(child: 
              ListTile(  
                leading: Icon(Icons.people),  
                title: Text('Recomendar a um amigo',
                  textAlign: TextAlign.start,
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w500,
                    color: Color.fromARGB(255, 71, 71, 101),
                  ),),  
                iconColor: Color.fromARGB(255, 229, 144, 101),
              ), 
              ),
              const Card(child: 
              ListTile(  
                dense: true,
                leading: Icon(Icons.settings),  
                title: Text('Configurações',
                  textAlign: TextAlign.start,
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w500,
                    color: Color.fromARGB(255, 71, 71, 101),
                  ),),  
                iconColor: Color.fromARGB(255, 229, 144, 101),
              ), ),
              const Card(child: 
              ListTile(  
                leading: Icon(Icons.help_outline),  
                title: Text('Ajuda',
                  textAlign: TextAlign.start,
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w500,
                    color: Color.fromARGB(255, 71, 71, 101),
                  ),),  
                iconColor: Color.fromARGB(255, 229, 144, 101),
              ), ),
              const Card(child: 
              ListTile(  
                leading: Icon(Icons.logout_outlined),  
                title: Text('Sair da conta',
                  textAlign: TextAlign.start,
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w500,
                    color: Color.fromARGB(255, 241, 97, 97),
                  ),),  
                iconColor: Color.fromARGB(255, 241, 97, 97),
              ), )
            ],  
          ),
    );
  }
}