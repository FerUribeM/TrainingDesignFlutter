import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:whatsapp_redesign/pages/whatsapp_home_page.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
    systemNavigationBarColor: Colors.white, // navigation bar color
  ));

  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Whatsapp Redesign',
      debugShowCheckedModeBanner: false,
      home: WhatsappHomePage(),
    );
  }
}
