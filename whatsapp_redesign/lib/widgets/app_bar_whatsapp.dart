
import 'package:flutter/material.dart';

AppBar appBarWhatsapp() {
  return AppBar(
    centerTitle: false,
    elevation: 0,
    backgroundColor: Color(0xFFFAFBFF),
    title: Text(
      'WhatsApp',
      style: TextStyle(
          color: Colors.green, fontSize: 22, fontWeight: FontWeight.bold),
    ),
    actions: [
      Container(
        width: 40,
        height: 40,
        child: Icon(Icons.wb_sunny_outlined, color: Colors.black,),
        decoration: BoxDecoration(
            color: Colors.grey.shade100,
            shape: BoxShape.circle
        ),
      ),
      Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Container(
          width: 40,
          height: 40,
          child: Icon(Icons.search, color: Colors.black,),
          decoration: BoxDecoration(
              color: Colors.grey.shade100,
              shape: BoxShape.circle
          ),
        ),
      ),
      Padding(
        padding: const EdgeInsets.only(right: 10),
        child: Container(
          width: 40,
          height: 40,
          child: Icon(Icons.menu, color: Colors.black,),
          decoration: BoxDecoration(
              color: Colors.grey.shade100,
              shape: BoxShape.circle
          ),
        ),
      )
    ],
  );
}