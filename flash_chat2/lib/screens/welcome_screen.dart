import '../screens/login_screen.dart';
import 'package:flutter/material.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import '../screens/registration_screen.dart';
import '../components/ButtonCard.dart';

class WelcomeScreen extends StatefulWidget {
  static const String id = "welcome_Screen";
  @override
  _WelcomeScreenState createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen>
    with TickerProviderStateMixin {
  late AnimationController controller;
  late Animation animation;
  @override
  void initState() {
    super.initState();
    controller =
        AnimationController(duration: const Duration(seconds: 1), vsync: this);
    animation = ColorTween(begin: Colors.blueGrey, end: Colors.white)
        .animate(controller);
    controller.forward();
    controller.addListener(
      () {
        setState(() {});
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: animation.value,
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 24.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Row(
              children: <Widget>[
                Hero(
                  tag: 'logo',
                  child: Container(
                    child: Image.asset('images/logo.png'),
                    height: 60.0,
                  ),
                ),
                AnimatedTextKit(
                  isRepeatingAnimation: false,
                  animatedTexts: [
                    TyperAnimatedText('Flash Chat',
                        textStyle: TextStyle(
                          color: Colors.grey.shade700,
                          fontSize: 45.0,
                          fontWeight: FontWeight.w900,
                        )),
                  ],
                  onTap: () {
                    print("Tap Event");
                  },
                ),
              ],
            ),
            SizedBox(
              height: 48.0,
            ),
            ButtonCard(
              text: 'Log In',
              color: Colors.lightBlueAccent,
              mission: () {
                Navigator.pushNamed(this.context, LoginScreen.id);
              },
            ),
            ButtonCard(
              text: 'Register',
              color: Colors.blueAccent,
              mission: () {
                Navigator.pushNamed(this.context, RegistrationScreen.id);
              },
            ),
          ],
        ),
      ),
    );
  }
}
