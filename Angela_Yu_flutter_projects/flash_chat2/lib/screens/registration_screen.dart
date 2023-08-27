import 'package:flash_chat1/screens/welcome_screen.dart';
import 'package:flutter/material.dart';
import '../components/ButtonCard.dart';
import '../constants.dart';
import 'chat_screen.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';

class RegistrationScreen extends StatefulWidget {
  static const String id = "regestration_Screen";

  @override
  _RegistrationScreenState createState() => _RegistrationScreenState();
}

class _RegistrationScreenState extends State<RegistrationScreen> {
  final FirebaseAuth _auth = FirebaseAuth.instance;
  String email = "";
  String pass = "";
  bool spinner = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: ModalProgressHUD(
        inAsyncCall: spinner,
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 24.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Hero(
                tag: 'logo',
                child: Container(
                  height: 200.0,
                  child: Image.asset('images/logo.png'),
                ),
              ),
              SizedBox(
                height: 48.0,
              ),
              TextField(
                textAlign: TextAlign.center,
                style: TextStyle(color: Colors.black),
                onChanged: (value) {
                  email = value;
                },
                decoration: buildInputDecoration(
                  text: 'Enter your email',
                ),
              ),
              SizedBox(
                height: 8.0,
              ),
              TextField(
                textAlign: TextAlign.center,
                obscureText: true,
                style: TextStyle(color: Colors.black),
                onChanged: (value) {
                  pass = value;
                },
                decoration: buildInputDecoration(text: 'Enter your password.'),
              ),
              SizedBox(
                height: 24.0,
              ),
              ButtonCard(
                text: 'Register',
                color: Colors.blueAccent,
                mission: () async {
                  setState(() {
                    spinner = true;
                  });
                  print(email);
                  print(pass);
                  try {
                    final newUser = await _auth.createUserWithEmailAndPassword(
                        email: email, password: pass);
                    setState(() {
                      spinner = false;
                    });
                    if (newUser != null) {
                      Navigator.pushNamed(context, ChatScreen.id);
                    }
                  } catch (e) {
                    print(e);
                    setState(() {
                      spinner = false;
                    });
                  }
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
