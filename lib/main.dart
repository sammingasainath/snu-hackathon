import 'package:firebase_core/firebase_core.dart';

import 'firebase_options.dart';

import 'package:flutter/material.dart';
import 'package:flutter_application_1/home.dart';
import 'package:flutter_application_1/views/livedetection.dart';
import 'package:flutter_application_1/views/onbording.dart';
import 'package:provider/provider.dart';
import 'dart:async';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  WidgetsFlutterBinding.ensureInitialized();

  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  runApp(MyApp());
}
// void main() async {
//   WidgetsFlutterBinding.ensureInitialized();

//   // Define the Firebase options with the database URL and other configurations
//   const firebaseOptions = FirebaseOptions(
//     apiKey: "AIzaSyBLeOOEv5Ye0v5fDWvAAXS7MDEFY5d-LWs",
//     appId: "1:459959638825:android:6def1f210256fdc552f538",
//     messagingSenderId: "459959638825",
//     projectId: "snu-smart-city-2",
//     databaseURL: 'https://snu-smart-city-2-default-rtdb.asia-southeast1.firebasedatabase.app',
//     storageBucket: "snu-smart-city-2.appspot.com",
//   );

//   // Initialize Firebase with the specified options
//   await Firebase.initializeApp(
//     options: firebaseOptions,
//   );

//   runApp(MyApp());
// }
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => DetectedObjectsProvider()),
      ],
      child: const MaterialApp(
        title: 'Object Detection App',
        debugShowCheckedModeBanner: false,
        // home: ObjectDetectionScreen(),
        home: SplashScreen(),
      ),
    );
  }
}

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(const Duration(seconds: 3), () {
      Navigator.pushReplacement<void, void>(
          context,
          MaterialPageRoute<void>(
            builder: (BuildContext context) => Onbording(),
          ));
    });
  }

  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF4A148C),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const SizedBox(
            height: 100,
          ),
          Container(
            height: 300,
            decoration: const BoxDecoration(
                color: Colors.white, shape: BoxShape.circle),
            width: double.infinity,
            child: Image.asset('./assets/logo.png'),
          ),
          const SizedBox(
            height: 20,
          ),
          const Center(
              child: Text(
            'POTHOLE DETECTION and REPORTING SYSTEM',
            style: TextStyle(
              fontWeight: FontWeight.bold,
            ),
          )),
        ],
      ),
    );
  }
}
