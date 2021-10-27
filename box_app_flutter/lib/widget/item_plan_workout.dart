import 'dart:ui';

import 'package:flutter/material.dart';

class ItemPlanWorkout extends StatelessWidget {

  String urlImage;

  ItemPlanWorkout(this.urlImage);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 20),
      child: Container(
        width: 220.0,
        height: double.infinity,
        decoration: BoxDecoration(
          image: DecorationImage(
              fit: BoxFit.cover,
              image: NetworkImage(urlImage)),
          borderRadius: BorderRadius.all(Radius.circular(22.0))
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
              child: Row(
                children: [
                  Center(
                      child: new ClipRect(
                          child: new BackdropFilter(
                              filter: new ImageFilter.blur(
                                  sigmaX: 10.0, sigmaY: 10.0),
                              child: new Container(
                                decoration: new BoxDecoration(
                                    color: Colors.white.withOpacity(0.2),
                                    borderRadius: BorderRadius.circular(5)),
                                child: Padding(
                                  padding: const EdgeInsets.all(5.0),
                                  child: new Text(
                                    'Easy',
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                              )))),
                  SizedBox(width: 15),
                  Center(
                      child: new ClipRect(
                          child: new BackdropFilter(
                              filter: new ImageFilter.blur(
                                  sigmaX: 10.0, sigmaY: 10.0),
                              child: new Container(
                                decoration: new BoxDecoration(
                                    color: Colors.white.withOpacity(0.2),
                                    borderRadius: BorderRadius.circular(5)),
                                child: Padding(
                                  padding: const EdgeInsets.all(5.0),
                                  child: new Text(
                                    'Boxing',
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                              )))),
                ],
              ),
            ),
            Spacer(),
            Padding(
              padding: const EdgeInsets.only(left: 20),
              child: Text(
                'JAB AND STRAINGHT',
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 22),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20, bottom: 30),
              child: Text(
                '15 mins',
                style: TextStyle(
                    color: Colors.white.withOpacity(0.8),
                    fontWeight: FontWeight.bold,
                    fontSize: 14),
              ),
            )
          ],
        ),
      ),
    );
  }
}
