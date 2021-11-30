import 'package:flutter/material.dart';

class SignUpWithEmail extends StatefulWidget {
  const SignUpWithEmail({key}) : super(key: key);

  @override
  _SignUpWithEmailState createState() => _SignUpWithEmailState();
}

class _SignUpWithEmailState extends State<SignUpWithEmail> {
  final TextEditingController _email = TextEditingController();
  final TextEditingController _password = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(color: Colors.grey,
              height: 50,
              width: MediaQuery.of(context).size.width/1.2,
              child: TextField(
                controller: _email,
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              height: 50,
              width: MediaQuery.of(context).size.width/1.2,
              child: TextField(
                controller: _email,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
