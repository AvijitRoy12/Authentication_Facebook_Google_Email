import 'package:flutter/material.dart';
import 'google_sign_in.dart';
import 'dashboard.dart';
import 'main.dart';
import 'sign_up_email.dart';

class Login_Page extends StatefulWidget {
  const Login_Page({Key key}) : super(key: key);

  @override
  _Login_PageState createState() => _Login_PageState();
}

class _Login_PageState extends State<Login_Page> {

  String userEmail = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(),
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                Icons.fingerprint,
                color: Colors.red,
                size: 70.0,
              ),
              SizedBox(
                height: 20.0,
              ),
              Text(
                'Sign in with Touch ID',
                style: TextStyle(color: Colors.white, fontSize: 25.0),
              ),
              SizedBox(
                height: 20.0,
              ),
              Text(
                'use your touch ID for faster,\neasier access to your account',
                style: TextStyle(
                  color: Colors.grey,
                  fontSize: 18.0,
                  wordSpacing: 2.0,
                ),
                textAlign: TextAlign.center,
              ),
              SizedBox(
                height: 60.0,
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                    minimumSize:
                    Size(MediaQuery.of(context).size.width / 1.2, 50),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(50.0),
                    ),
                    primary: Colors.blue),
                child: Text(
                  'Continue with google',
                  style: TextStyle(fontSize: 16.0, color: Colors.white),
                ),
                onPressed: ()  async{
                  await signInWithGoogle();
                  setState(
                        () {
                      Navigator.of(context).pushAndRemoveUntil(
                          MaterialPageRoute(builder: (c) => KornoApp()),
                              (route) => false);
                      Navigator.push(
                          context, MaterialPageRoute(builder: (context) => Dashboard()));
                      print('hello');
                    },
                  );
                },
              ),
              SizedBox(
                height: 20.0,
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                    minimumSize:
                    Size(MediaQuery.of(context).size.width / 1.2, 50),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(50.0),
                    ),
                    primary: Colors.indigo),
                child: Text(
                  'Continue with facebook',
                  style: TextStyle(fontSize: 16.0, color: Colors.white),
                ),
                onPressed: ()  {
                  //await signInWithGoogle();
                  setState(
                        () {
                      Navigator.of(context).pushAndRemoveUntil(
                          MaterialPageRoute(builder: (c) => KornoApp()),
                              (route) => false);
                      Navigator.push(
                          context, MaterialPageRoute(builder: (context) => Dashboard()));
                      print('hello');
                    },
                  );
                },
              ),
              SizedBox(
                height: 20.0,
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                    minimumSize:
                    Size(MediaQuery.of(context).size.width / 1.2, 50),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(50.0),
                    ),
                    primary: Colors.teal),
                child: Text(
                  'Continue with email',
                  style: TextStyle(fontSize: 16.0, color: Colors.white),
                ),
                onPressed: ()  {
                  //await signInWithGoogle();
                  setState(
                        () {
                      Navigator.of(context).pushAndRemoveUntil(
                          MaterialPageRoute(builder: (c) => KornoApp()),
                              (route) => false);
                      Navigator.push(
                          context, MaterialPageRoute(builder: (context) => SignUpWithEmail()));
                      print('hello');
                    },
                  );
                },
              ),
              SizedBox(
                height: 20.0,
              ),
              RichText(
                text: TextSpan(
                  text: 'New user? ',
                  style: TextStyle(
                    color: Colors.teal,
                    fontSize: 16.0,
                    wordSpacing: 2.0,
                  ),
                  children: const <TextSpan>[
                    TextSpan(
                      text: 'Sign up',
                      style: TextStyle(
                        color: Colors.white,
                        wordSpacing: 2.0,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 60.0,
              ),
              TextButton(
                onPressed: () {},
                child: Text(
                  'help?',
                  style: TextStyle(
                    color: Colors.red,
                    fontSize: 20.0,
                    decoration: TextDecoration.underline,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
