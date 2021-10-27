import 'package:box_app_flutter/pages/box_home_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.dark.copyWith(
      statusBarColor: Colors.white, // Color for Android
      statusBarBrightness: Brightness.dark // Dark == white status bar -- for IOS.
  ));
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: Theme.of(context).copyWith(appBarTheme: Theme.of(context).appBarTheme.copyWith(brightness: Brightness.light)),
      debugShowCheckedModeBanner: false,
      title: 'Box App',
      home: BoxHomePage(),
    );
  }
}
