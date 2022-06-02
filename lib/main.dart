import 'package:flutter/material.dart';
import 'package:pruebas/pages/onboarding_page.dart';

void main() => runApp(MyApp());



class MyApp extends StatelessWidget {
  static final String title = 'Onboarding';

  @override
  
  Widget build(BuildContext context) => MaterialApp(
        debugShowCheckedModeBanner: false,
        title: title,
        theme: ThemeData(primarySwatch: Colors.blue),
        home: OnBoardingPage(),
      );
}
