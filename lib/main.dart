import 'package:flutter/material.dart';
import 'package:sipax_app/SplashScreen/splashScreen.dart';

Future  <void> main() async{
  WidgetsFlutterBinding.ensureInitialized();
  runApp(
      MyApp()
  );
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Sipax App',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.deepPurple,
      ),
      home: SplashScreen(), //call the splashscreen
    );
  }
}

