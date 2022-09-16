import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final _form = GlobalKey<FormState>();
  final _user = TextEditingController();
  final _password = TextEditingController();

  Widget _setImage() {
    return Padding(
      padding: const EdgeInsets.only(top: 30.0, bottom: 30.0),
      child: Center(
        child: Container(
          height: MediaQuery.of(context).size.height * 0.2,
          width: MediaQuery.of(context).size.width * 0.5,
          decoration: BoxDecoration(
            border: Border.all(
              width: 2,
              color: Colors.black45,
            ),
          ),
          child: Image.asset(
            './assets/images/Cooking.png',
            width: 150,
            height: 150,
          ),
        ),
      ),
    );
  }

  Widget _getLogin() {
    return TextFormField(
      controller: _user,
      style: const TextStyle(fontSize: 22),
      decoration: const InputDecoration(
        border: OutlineInputBorder(),
        labelText: 'Login',
        prefixIcon: Icon(Icons.person),
      ),
      keyboardType: TextInputType.emailAddress,
      inputFormatters: [
        FilteringTextInputFormatter.singleLineFormatter,
      ],
      validator: (value) {
        if (value!.isEmpty) {
          return 'Informe um email.';
        }
        return null;
      },
    );
  }

  Widget _getPassword() {
    return Padding(
      padding: const EdgeInsets.only(top: 10.0),
      child: TextFormField(
        obscureText: true,
        controller: _password,
        style: const TextStyle(fontSize: 22),
        decoration: const InputDecoration(
          border: OutlineInputBorder(),
          labelText: 'Password',
          prefixIcon: Icon(Icons.key),
        ),
        inputFormatters: [
          FilteringTextInputFormatter.singleLineFormatter,
        ],
        validator: (value) {
          value!.isEmpty ? 'Informe uma senha.' : null;
          value.length <= 6
              ? 'A senha precisa ter 6 ou mais caracteres.'
              : null;
          return null;
        },
      ),
    );
  }

  Widget _sendButton() {
    return Padding(
      padding: const EdgeInsets.only(top: 10.0),
      child: ElevatedButton(
        onPressed: () {},
        child: Row(
          children: const [
            Icon(Icons.send),
            Padding(
              padding: EdgeInsets.all(20),
              child: Text(
                'Entrar',
                style: TextStyle(fontSize: 18),
              ),
            ),
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        title: const Text('Comiditas App'),
      ),
      body: Column(
        children: [
          _setImage(),
          SizedBox(
            width: MediaQuery.of(context).size.width * 0.62,
            child: Form(
              key: _form,
              child: Container(
                alignment: Alignment.center,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    _getLogin(),
                    _getPassword(),
                    _sendButton(),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
