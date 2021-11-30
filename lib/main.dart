import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:korno_app/dashboard.dart';
import 'google_sign_in.dart';
import 'login.dart';

Future <void> main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(KornoApp());
}

class KornoApp extends StatefulWidget {
  @override
  _KornoAppState createState() => _KornoAppState();
}

class _KornoAppState extends State<KornoApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
        primaryColor: Color(0xFF1B2347),
        scaffoldBackgroundColor: Color(0xFF282A39),
      ),
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: ThemeData.dark().copyWith(
            primaryColor: Color(0xFF1B2347),
            scaffoldBackgroundColor: Color(0xFF282A39)),
        home: Login_Page()
    );
  }
}
