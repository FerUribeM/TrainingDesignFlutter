import 'dart:ui';

import 'package:box_app_flutter/pages/detail_workout_page.dart';
import 'package:flutter/material.dart';

class ItemCollectionWorkout extends StatelessWidget {

  late String urlImage;
  late String difficulty;

  ItemCollectionWorkout(this.urlImage, this.difficulty);

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.transparent,
      child: InkWell(
        onTap: (){
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => DetailWorkoutPage()),
          );
        },
        child: Padding(
          padding: const EdgeInsets.only(right: 20),
          child: Container(
            width: 180.0,
            decoration: BoxDecoration(
              image: DecorationImage(
                  fit: BoxFit.cover,
                  image: NetworkImage(
                      urlImage)),
              borderRadius: BorderRadius.all(Radius.circular(20.0)),
            ),
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ClipRect(
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
                          ))),
                  Spacer(),
                  Text(
                    difficulty,
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 22),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
