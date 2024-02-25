import 'package:firebase_core/firebase_core.dart';
import 'ViewModel/firebase_options.dart';
import 'package:flutter/material.dart';
import 'package:note_app/view/home.dart';
// import 'package:note_app/pages/login_page.dart';
// import 'package:note_app/pages/register_page.dart';

import 'package:note_app/view/signup.dart';
import 'package:note_app/view/signin.dart';

Future main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MainApp());

}
//
// void main() async {
//   WidgetsFlutterBinding.ensureInitialized();
//   await Firebase.initializeApp(
//     options: DefaultFirebaseOptions.currentPlatform,
//   );
//   runApp(const MainApp());
// }

class MainApp extends StatelessWidget {
  const MainApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/signup',
      routes: {
        '/': (context) => HomeScreen(),
        '/signup': (context) => SignupPage(),
        '/signin': (context) => SigninPage(),
      },
    );
  }
}