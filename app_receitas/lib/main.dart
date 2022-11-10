import 'dart:js';

import 'package:app_receitas/constants.dart';
import 'package:app_receitas/pages/login_page.dart';
import 'package:app_receitas/services/auth_service.dart';
import 'package:app_receitas/widgets/auth_check.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:provider/provider.dart';
import 'firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => AuthService()),
    ],
    child: MyApp(),
    )
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Fridgey App',
      theme: ThemeData(
        primaryColor: primaryColor,
        scaffoldBackgroundColor: whiteBackgroundColor,
      ),
      home: const AuthCheck(),
    );
  }
}


//void main() {
//  debugInvertOversizedImages = false;
//  runApp(const MeuAplicativo());

//}
