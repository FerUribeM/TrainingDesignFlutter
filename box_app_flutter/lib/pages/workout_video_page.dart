import 'dart:ui';

import 'package:box_app_flutter/widget/item_workouts_selected.dart';
import 'package:flutter/material.dart';

class WorkoutVideoPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF1E222E),
      body: Stack(
        children: [
          SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                children: [
                  SizedBox(
                    height: 40,
                  ),
                  Row(
                    children: [
                      GestureDetector(
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
                                        borderRadius: BorderRadius.circular(10)),
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
                        onTap: (){
                          Navigator.pop(context);
                        },
                      ),
                      Expanded(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              '03:10',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 18,
                                  fontWeight: FontWeight.w700),
                            ),
                            SizedBox(
                              width: 20,
                            ),
                            Text(
                              'Progress: 16%',
                              style: TextStyle(
                                  color: Color(0xFF7F8090),
                                  fontSize: 16,
                                  fontWeight: FontWeight.w700),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        width: 50,
                        height: 50,
                        child: ClipRect(
                            child: new BackdropFilter(
                                filter: new ImageFilter.blur(
                                    sigmaX: 10.0, sigmaY: 10.0),
                                child: new Container(
                                  decoration: new BoxDecoration(
                                      color: Colors.white.withOpacity(0.2),
                                      borderRadius: BorderRadius.circular(10)),
                                  child: Center(
                                      child: Icon(
                                    Icons.volume_up_outlined,
                                    color: Colors.white,
                                    size: 20,
                                  )),
                                ))),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Container(
                    width: double.infinity,
                    height: 380,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            fit: BoxFit.cover,
                            image: NetworkImage(
                                "https://images.unsplash.com/photo-1591504771094-a1ca4de142d7?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=687&q=80")),
                        borderRadius: BorderRadius.all(Radius.circular(22.0))),
                  ),
                  SizedBox(
                    height: 30,
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
                    height: 30,
                  ),
                  ItemWorkoutsSelected("Traditional Jab"),
                  ItemWorkoutsSelected("Traditional Jab"),
                  ItemWorkoutsSelected("Traditional Jab"),
                  ItemWorkoutsSelected("Traditional Jab"),
                ],
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomRight,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 25),
              child: Material(
                color: Colors.transparent,
                child: InkWell(
                  onTap: () {},
                  child: Container(
                    width: 70,
                    height: 70,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(18)),
                    child: Center(
                        child:
                            Icon(Icons.pause, color: Colors.black, size: 30)),
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
