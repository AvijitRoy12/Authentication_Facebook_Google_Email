import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:korno_app/login.dart';
import 'package:korno_app/main.dart';
import 'google_sign_in.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({Key key}) : super(key: key);

  @override
  _DashboardState createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Welcome to your dashboard',style: TextStyle(fontSize: 25.0),),
              SizedBox(height: 20.0,),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                    minimumSize:
                    Size(MediaQuery.of(context).size.width / 1.2, 50),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(50.0),
                    ),
                    primary: Colors.redAccent),
                child: Text(
                  'Sign out',
                  style: TextStyle(fontSize: 16.0, color: Colors.white),
                ),
                onPressed: () async{
                  await FirebaseAuth.instance.signOut();
                  await GoogleSignIn().signOut();
                  setState(() {
                    Navigator.of(context).pushAndRemoveUntil(
                        MaterialPageRoute(builder: (c) => Dashboard()),
                            (route) => false);
                    Navigator.push(
                        context, MaterialPageRoute(builder: (context) => Login_Page()));
                  });
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
