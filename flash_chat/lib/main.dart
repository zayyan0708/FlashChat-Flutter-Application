// // ignore_for_file: prefer_const_constructors, unused_import, use_key_in_widget_constructors

// import 'package:firebase_core/firebase_core.dart';
// import 'package:flutter/material.dart';
// import 'package:flash_chat/screens/welcome_screen.dart';
// import 'package:flash_chat/screens/login_screen.dart';
// import 'package:flash_chat/screens/registration_screen.dart';
// import 'package:flash_chat/screens/chat_screen.dart';

// //void main() => runApp(FlashChat());
// void main() async {
//   WidgetsFlutterBinding.ensureInitialized();
//   await Firebase.initializeApp();
//   runApp(FlashChat());
// }

// class FlashChat extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       initialRoute: WelcomeScreen.id,
//       routes: {
//         WelcomeScreen.id: ((context) => WelcomeScreen()),
//         LoginScreen.id: ((context) => LoginScreen()),
//         RegistrationScreen.id: ((context) => RegistrationScreen()),
//         ChatScreen.id: ((context) => ChatScreen()),
//       },
//     );
//   }
// }
// ignore_for_file: prefer_const_constructors, unused_import, use_key_in_widget_constructors, sort_child_properties_last, sized_box_for_whitespace, deprecated_member_use

import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flash_chat/screens/welcome_screen.dart';
import 'package:flash_chat/screens/login_screen.dart';
import 'package:flash_chat/screens/registration_screen.dart';
import 'package:flash_chat/screens/chat_screen.dart';
import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:page_transition/page_transition.dart';

//void main() => runApp(FlashChat());
void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(FlashChat());
}

class FlashChat extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: AnimatedSplashScreen(
        splash: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Expanded(
              child: Image.asset(
                'images/logo.png',
                height: 500,
                width: 700,
                //fit: BoxFit.fitWidth,
              ),
            ),
            Expanded(
              child: Center(
                child: Text(
                  'Flash Chat',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 30.0,
                    fontWeight: FontWeight.w900,
                  ),
                ),
              ),
            ),
          ],
        ),
        splashTransition: SplashTransition.rotationTransition,
        nextScreen: WelcomeScreen(),
        duration: 2000,
        backgroundColor: Colors.lightBlueAccent,
        pageTransitionType: PageTransitionType.rightToLeft,
      ),
      //initialRoute: WelcomeScreen.id,
      routes: {
        WelcomeScreen.id: ((context) => WelcomeScreen()),
        LoginScreen.id: ((context) => LoginScreen()),
        RegistrationScreen.id: ((context) => RegistrationScreen()),
        ChatScreen.id: ((context) => ChatScreen()),
      },
    );
  }
}
