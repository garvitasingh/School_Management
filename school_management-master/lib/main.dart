import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:splashscreen/splashscreen.dart';


import '../auth/register.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: const FirebaseOptions(
            apiKey: "AIzaSyAoZKpptClyJoyXNtiY8nakUA3QAtz7lmY",
            authDomain: "school-management-f4a08.firebaseapp.com",
            projectId: "school-management-f4a08",
            storageBucket: "school-management-f4a08.appspot.com",
            messagingSenderId: "355445930091",
            appId: "1:355445930091:web:35717692ee88784ecfd92e",
            measurementId: "G-GJPLB9G2CC"));
  } else {
    await Firebase.initializeApp();
  }
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Colors.blue[900],
      ),
      home:  Splash2(),
    );
  }
}
class Splash2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SplashScreen(
      seconds: 6,
      navigateAfterSeconds: new Register(),
     image: Image.asset("assets/school.png"),
     
      loadingText: Text("Loading"),
      photoSize: 100.0,
      loaderColor: Colors.blue,
    );
  }
}
