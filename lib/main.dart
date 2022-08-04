import 'package:easy_splash_screen/easy_splash_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MainSplashScreen(),
    );
  }
}

class MainSplashScreen extends StatelessWidget {
  const MainSplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // صورة او معلومات تظهر لمدة معينة
      body: EasySplashScreen(
        backgroundColor: Colors.blueAccent,
        logo: Image.asset('images/s1.jpg'),
        // حجم الصورة
        logoSize: 170,
        title: const Text(
          'Title',
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
        ),
        showLoader: true,
        loadingText: const Text('Loading...'),
        navigator: MyApp(),
        //MyApp انو بعد ثانيتين يرجع الي
        durationInSeconds: 2,
      ),
    );
  }
}
