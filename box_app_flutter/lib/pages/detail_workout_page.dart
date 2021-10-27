import 'dart:ui';

import 'package:box_app_flutter/pages/workout_video_page.dart';
import 'package:box_app_flutter/widget/item_workouts_selected.dart';
import 'package:flutter/material.dart';

class DetailWorkoutPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xFF1E222E),
        body: Stack(
          children: [
            SingleChildScrollView(
                child: Container(
              width: double.infinity,
              child: Column(
                children: [
                  Container(
                    width: double.infinity,
                    height: 280,
                    child: Stack(
                      children: [
                        Container(
                          height: 250,
                          width: double.infinity,
                          child: Image.network(
                            'https://images.unsplash.com/photo-1549719386-74dfcbf7dbed?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=687&q=80',
                            fit: BoxFit.cover,
                          ),
                        ),
                        Positioned(
                          top: 50,
                          left: 30,
                          child: GestureDetector(
                            onTap: (){
                              Navigator.pop(context);
                            },
                            child: Container(
                              width: 50,
                              height: 50,
                              child: ClipRect(
                                  child: new BackdropFilter(
                                      filter: new ImageFilter.blur(
                                          sigmaX: 10.0, sigmaY: 10.0),
                                      child: new Container(
                                        decoration: new BoxDecoration(
                                            color: Colors.white.withOpacity(0.2),
                                            borderRadius:
                                                BorderRadius.circular(10)),
                                        child: Padding(
                                          padding: const EdgeInsets.only(left: 8),
                                          child: Center(
                                              child: Icon(
                                            Icons.arrow_back_ios,
                                            color: Colors.white,
                                            size: 20,
                                          )),
                                        ),
                                      ))),
                            ),
                          ),
                        ),
                        Positioned(
                          top: 50,
                          right: 30,
                          child: Container(
                            width: 50,
                            height: 50,
                            child: ClipRect(
                                child: new BackdropFilter(
                                    filter: new ImageFilter.blur(
                                        sigmaX: 10.0, sigmaY: 10.0),
                                    child: new Container(
                                      decoration: new BoxDecoration(
                                          color: Colors.white.withOpacity(0.2),
                                          borderRadius:
                                              BorderRadius.circular(10)),
                                      child: Center(
                                          child: Icon(
                                        Icons.bookmark,
                                        color: Colors.white,
                                        size: 20,
                                      )),
                                    ))),
                          ),
                        ),
                        Positioned(
                          bottom: 0,
                          left: 0,
                          right: 0,
                          child: Container(
                            width: double.infinity,
                            margin: EdgeInsets.symmetric(horizontal: 20),
                            height: 70,
                            child: ClipRect(
                                child: new BackdropFilter(
                                    filter: new ImageFilter.blur(
                                        sigmaX: 10.0, sigmaY: 10.0),
                                    child: new Container(
                                      decoration: new BoxDecoration(
                                          color: Color(0xFF383C47)
                                              .withOpacity(0.9),
                                          borderRadius:
                                              BorderRadius.circular(10)),
                                      child: Row(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Container(
                                            decoration: BoxDecoration(
                                                color: Color(0xFF1E222E),
                                                shape: BoxShape.circle),
                                            width: 50,
                                            height: 50,
                                            child: Icon(
                                              Icons.lock_clock,
                                              color: Color(0xFFEA3D6F),
                                            ),
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.symmetric(
                                                horizontal: 10),
                                            child: Column(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Text(
                                                  'Time',
                                                  style: TextStyle(
                                                      color: Color(0xFF7F8090)),
                                                ),
                                                SizedBox(
                                                  height: 4,
                                                ),
                                                Text(
                                                  '15 mins',
                                                  style: TextStyle(
                                                      color: Colors.white),
                                                ),
                                              ],
                                            ),
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.symmetric(
                                                horizontal: 20),
                                            child: Container(
                                              width: 2,
                                              height: double.infinity,
                                              color: Color(0xFF7F8090),
                                              margin: EdgeInsets.symmetric(
                                                  vertical: 15),
                                            ),
                                          ),
                                          Container(
                                            decoration: BoxDecoration(
                                                color: Color(0xFF1E222E),
                                                shape: BoxShape.circle),
                                            width: 50,
                                            height: 50,
                                            child: Icon(
                                              Icons
                                                  .local_fire_department_outlined,
                                              color: Color(0xFFEA3D6F),
                                            ),
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.symmetric(
                                                horizontal: 10),
                                            child: Column(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Text(
                                                  'Burn',
                                                  style: TextStyle(
                                                      color: Color(0xFF7F8090)),
                                                ),
                                                SizedBox(
                                                  height: 4,
                                                ),
                                                Text(
                                                  '75 kcal',
                                                  style: TextStyle(
                                                      color: Colors.white),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ],
                                      ),
                                    ))),
                          ),
                        )
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 20, vertical: 30),
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
                                          borderRadius:
                                              BorderRadius.circular(5)),
                                      child: Padding(
                                        padding: const EdgeInsets.all(5.0),
                                        child: new Text(
                                          'Easy',
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontWeight: FontWeight.w500),
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
                                          borderRadius:
                                              BorderRadius.circular(5)),
                                      child: Padding(
                                        padding: const EdgeInsets.all(5.0),
                                        child: new Text(
                                          'Boxing',
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontWeight: FontWeight.w500),
                                        ),
                                      ),
                                    )))),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'JAB AND STRAIGHT',
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.w900,
                              fontSize: 20),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          "Let's get down and dirty learning the jab and the straight rear hand",
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 15),
                        ),
                        Row(
                          children: [
                            CircleAvatar(
                              radius: 20.0,
                              backgroundImage: NetworkImage(
                                  'https://images.unsplash.com/photo-1524502397800-2eeaad7c3fe5?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=687&q=80'),
                              backgroundColor: Colors.transparent,
                            ),
                            Expanded(
                              child: Padding(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 20, vertical: 20),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text("Joselyn Levin",
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontWeight: FontWeight.w400)),
                                    Text("Coach",
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontWeight: FontWeight.w400)),
                                  ],
                                ),
                              ),
                            ),
                            Container(
                              width: 100,
                              height: 50,
                              child: ClipRect(
                                  child: new BackdropFilter(
                                      filter: new ImageFilter.blur(
                                          sigmaX: 10.0, sigmaY: 10.0),
                                      child: new Container(
                                        decoration: new BoxDecoration(
                                            color:
                                                Colors.white.withOpacity(0.2),
                                            borderRadius:
                                                BorderRadius.circular(10)),
                                        child: Padding(
                                          padding:
                                              const EdgeInsets.only(left: 8),
                                          child: Center(
                                              child: Text(
                                            "Follow",
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontWeight: FontWeight.w400),
                                          )),
                                        ),
                                      ))),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Rounds',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20),
                            ),
                            Spacer(),
                            Text(
                              '1/10',
                              style: TextStyle(
                                  color: Color(0xFF7F8090),
                                  fontSize: 16,
                                  fontWeight: FontWeight.w400),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        ItemWorkoutsSelected("Traditional Jab"),
                        ItemWorkoutsSelected("Jump force"),
                        ItemWorkoutsSelected("Run express"),
                        ItemWorkoutsSelected("Boxing force"),
                        ItemWorkoutsSelected("Training box"),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 100,
                  )
                ],
              ),
            )),
            Align(
              alignment: Alignment.bottomCenter,
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 25),
                child: Material(
                  color: Colors.transparent,
                  child: InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => WorkoutVideoPage()),
                      );
                    },
                    child: Container(
                      width: double.infinity,
                      height: 60,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(20)),
                      child: Center(
                          child: Text(
                        'Resume workout',
                        style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 20),
                      )),
                    ),
                  ),
                ),
              ),
            )
          ],
        ));
  }
}
