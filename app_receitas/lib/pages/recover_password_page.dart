import 'package:app_receitas/components/public/back_to_start_button.dart';
import 'package:app_receitas/components/public/send_button.dart';
import 'package:app_receitas/components/public/used_input_text_field.dart';
import 'package:app_receitas/constants.dart';
import 'package:blobs/blobs.dart';
import 'package:flutter/material.dart';

class RecoverPasswordPage extends StatelessWidget {
  const RecoverPasswordPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: loginAndRegisterColor,
      body: SingleChildScrollView(
        child: Stack(
          children: [
            Column(
              children: [
                SizedBox(height: 20,),
                Image.asset(
                  './assets/images/forgot_password_2.png',
                  width: double.infinity,
                ),
              ],
            ),
            Column(
              children: <Widget>[
                const SizedBox(height: 350,),
                Container(
                  height: 480,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(25),
                      topRight: Radius.circular(25),
                    ),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.5),
                        spreadRadius: 1,
                        blurRadius: 15,
                        offset: const Offset(0, -2), // changes position of shadow
                      ),
                    ],
                  ),
                  child: Column(
                    children: [
                      SizedBox(height: 20,),
                      Align(
                        alignment: const FractionalOffset(0.03, 0),
                        child: text('Recuperar senha', 40),
                      ),
                      Align(
                        alignment: const FractionalOffset(0.03, 0),
                        child: 
                          Container(
                            margin: const EdgeInsets.only(left: 20, top: 10),
                            width: 300,
                            child:
                              const Text(
                                "Informe seu e-mail para a recuperação da senha.",
                                textAlign: TextAlign.left,
                                style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                  color: blackTextColor,
                                ),
                              ),
                          ),
                      ),
                      const SizedBox(height: 10,),
                      UsedInputTextField(
                        hintText: 'E-mail',
                        onChanged: (value) {},
                      ),
                      const SizedBox(height: 10,),
                      Align(
                        alignment: const FractionalOffset(0.03, 0),
                        child: 
                          Container(
                            margin: const EdgeInsets.only(left: 20, top: 10),
                            width: 360,
                            child:
                              const Text(
                                "Você receberá um e-mail com as informações para a recuperação de senha.",
                                textAlign: TextAlign.left,
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                  color: blackTextColor,
                                ),
                              ),
                          ),
                      ),
                      const SizedBox(height: 25,),
                      SendButton(
                        onPressed: () {},
                        text: "Enviar e-mail",
                      ),
                      Container(
                        alignment: Alignment.center,
                        child: BackToStartButton(
                          onPressed: () {
                            Navigator.pop(context);
                          },
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
