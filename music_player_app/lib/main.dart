import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:music_player_app/colors_apps.dart';
import 'package:music_player_app/player_list_page.dart';
import 'package:sleek_circular_slider/sleek_circular_slider.dart';

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
      title: 'MusicPlayerApp',
      debugShowCheckedModeBanner: false,
      home: MusicPlayerApp(),
    );
  }
}

class MusicPlayerApp extends StatelessWidget {
  const MusicPlayerApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: Colors.white,
          image: DecorationImage(
              image: AssetImage('assets/background.png'), fit: BoxFit.cover)),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Stack(
          children: [
            Column(
              children: [
                SizedBox(
                  height: 50,
                ),
                Container(
                  width: double.infinity,
                  height: 60,
                  child: Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Icon(Icons.arrow_back_ios, color: Colors.white),
                        Expanded(
                          child: Center(
                            child: Text('Now Playing', style: TextStyle(
                              color: Colors.white,
                              fontSize: 15,
                              fontWeight: FontWeight.bold
                            ),),
                          ),
                        ),
                        Material(
                          color: Colors.transparent,
                          child:
                          InkWell(
                              customBorder: new CircleBorder(),
                              onTap: (){
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(builder: (context) => PlayerListPage()),
                                );
                              },
                              child: Icon(Icons.arrow_forward_ios, color: Colors.white)
                          )
                        )
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  width: double.infinity,
                  height: 250.0,
                  margin: EdgeInsets.symmetric(horizontal: 70, vertical: 10),
                  decoration: BoxDecoration(
                    image: DecorationImage(
                        fit: BoxFit.cover,
                        image: NetworkImage(
                            'https://i1.wp.com/oildale.s3.amazonaws.com/wp-content/uploads/2018/04/22005936/Aaron-Copland-resize-1a.jpg?resize=640%2C633&ssl=1')),
                    borderRadius: BorderRadius.all(Radius.circular(20)),
                  ),
                ),
                Text(
                  'Appalachian spring',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 22,
                      fontWeight: FontWeight.bold),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    'Aaron copland',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                        fontWeight: FontWeight.normal),
                  ),
                ),
                Expanded(
                  child: Stack(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          children: [
                            Icon(
                              Icons.play_arrow,
                              color: Colors.white,
                            ),
                            Text(
                              '22:39',
                              style: TextStyle(color: Colors.white),
                            ),
                            Spacer(),
                            Text(
                              '26:07',
                              style: TextStyle(
                                  color: Color(0xFFB2855B).withOpacity(0.6)),
                            )
                          ],
                        ),
                      ),
                      Positioned.fill(
                        child: Padding(
                          padding: const EdgeInsets.all(40.0),
                          child: SleekCircularSlider(
                            appearance: CircularSliderAppearance(
                                customColors: CustomSliderColors(
                                    hideShadow: true,
                                    dotColor: Colors.white,
                                    trackColor: Colors.transparent,
                                    gradientEndAngle: 180,
                                    gradientStartAngle: 0,
                                    progressBarColors: [
                                      Color(0xFF5C381D),
                                      Color(0xFF704B2C),
                                      Color(0xFFB2855B),
                                    ]),
                                size: 80,
                                angleRange: 360,
                                startAngle: 90),
                            min: 0,
                            max: 100,
                            initialValue: 10,
                            onChange: (double value) {
                              // callback providing a value while its being changed (with a pan gesture)
                            },
                            onChangeStart: (double startValue) {
                              // callback providing a starting value (when a pan gesture starts)
                            },
                            onChangeEnd: (double endValue) {
                              // ucallback providing an ending value (when a pan gesture ends)
                            },
                            innerWidget: (double value) {
                              return Padding(
                                padding: const EdgeInsets.all(9.0),
                                child: CircleAvatar(
                                  radius: 10,
                                  backgroundColor:
                                      Color(0xFFB2855B).withOpacity(0.1),
                                  child: Padding(
                                    padding: const EdgeInsets.all(25.0),
                                    child: Stack(
                                      children: [
                                        Column(
                                          children: [
                                            CircleAvatar(
                                              radius: 6,
                                              backgroundColor:
                                                  Color(0xFFEFC9A2),
                                            ),
                                            Expanded(
                                                child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              children: [
                                                CircleAvatar(
                                                  radius: 6,
                                                  backgroundColor: Color(0xFFEFC9A2),
                                                ),
                                                Spacer(),
                                                CircleAvatar(
                                                  radius: 6,
                                                  backgroundColor:
                                                      Color(0xFFEFC9A2),
                                                )
                                              ],
                                            )),
                                            CircleAvatar(
                                              radius: 6,
                                              backgroundColor:
                                                  Color(0xFFEFC9A2),
                                            )
                                          ],
                                        ),
                                        Positioned.fill(
                                          child: Container(
                                            child: Container(
                                              margin: EdgeInsets.all(50),
                                              decoration: BoxDecoration(
                                                  color: Color(0xFF704B2C)
                                                      .withOpacity(0.3),
                                                  shape: BoxShape.circle),
                                              child: Container(
                                                margin: EdgeInsets.all(15),
                                                decoration: BoxDecoration(
                                                    gradient: RadialGradient(
                                                      colors: [
                                                        Color(0xFFB2855B),
                                                        Color(0xFF5C381D),
                                                      ],
                                                      focal: Alignment.topCenter
                                                    ),
                                                    shape: BoxShape.circle),
                                                child: Center(
                                                  child: Icon(
                                                    Icons.play_arrow,
                                                    color: Colors.white,
                                                    size: 50,
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                              );
                            },
                          ),
                        ),
                      ),
                      Positioned(
                        bottom: 1,
                        child: Padding(
                          padding: const EdgeInsets.all(25.0),
                          child: Row(
                            children: [
                              Text(
                                '0002/0069',
                                style: TextStyle(
                                    color: Color(0xFFEFC9A2).withOpacity(0.7)),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
