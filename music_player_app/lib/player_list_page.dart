import 'package:flutter/material.dart';

class PlayerListPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
            color: Colors.white,
            image: DecorationImage(
                image: AssetImage('assets/background.png'), fit: BoxFit.cover)),
        child: Scaffold(
          backgroundColor: Colors.transparent,
          body: Column(
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
                      Material(
                          color: Colors.transparent,
                          child: InkWell(
                              customBorder: new CircleBorder(),
                              onTap: () {
                                  Navigator.pop(context);
                              },
                              child: Icon(Icons.arrow_back_ios,
                                  color: Colors.white))),
                      Expanded(
                        child: Center(
                          child: Text(
                            'Albums',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 15,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                      Material(
                          color: Colors.transparent,
                          child: InkWell(
                              customBorder: new CircleBorder(),
                              onTap: () {

                              },
                              child: Icon(Icons.arrow_forward_ios,
                                  color: Colors.white)))
                    ],
                  ),
                ),
              ),
              Container(
                width: double.infinity,
                height: 120,
                padding: EdgeInsets.all(20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ClipRRect(
                      child: Image.network(
                          'https://i1.wp.com/oildale.s3.amazonaws.com/wp-content/uploads/2018/04/22005936/Aaron-Copland-resize-1a.jpg?resize=640%2C633&ssl=1'),
                      borderRadius: BorderRadius.circular(100),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 40),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Aaron Copland',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 26,
                                fontWeight: FontWeight.w500),
                          ),
                          Text(
                            'Classical, Film scores',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 16,
                                fontWeight: FontWeight.w500),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 20, horizontal: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Text(
                      'Tracklist',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 25,
                          fontWeight: FontWeight.w500),
                    ),
                    Text(
                      'Similar Artists',
                      style: TextStyle(
                          color: Color(0xFFB2855B),
                          fontSize: 25,
                          fontWeight: FontWeight.w500),
                    )
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 20),
                height: 3,
                width: double.infinity,
                color: Color(0xFFB2855B),
              ),
              Expanded(
                  child: ListView(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: [
                        Icon(
                          Icons.play_arrow,
                          color: Colors.white.withOpacity(0.8),
                          size: 35,
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 20),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Fanfare for the common man',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Text(
                                'Aaron Copland, LA Philarmonic',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 14,
                                    fontWeight: FontWeight.w300),
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: [
                        Icon(
                          Icons.play_arrow,
                          color: Colors.white.withOpacity(0.8),
                          size: 35,
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 20),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Fanfare for the common man',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Text(
                                'Aaron Copland, LA Philarmonic',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 14,
                                    fontWeight: FontWeight.w300),
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: [
                        Icon(
                          Icons.pause,
                          color: Color(0xFFEFC9A2).withOpacity(0.8),
                          size: 35,
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 20),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Fanfare for the common man',
                                style: TextStyle(
                                    color: Color(0xFFEFC9A2),
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Text(
                                'Aaron Copland, LA Philarmonic',
                                style: TextStyle(
                                    color: Color(0xFFEFC9A2),
                                    fontSize: 14,
                                    fontWeight: FontWeight.w300),
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: [
                        Icon(
                          Icons.play_arrow,
                          color: Colors.white.withOpacity(0.8),
                          size: 35,
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 20),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Fanfare for the common man',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Text(
                                'Aaron Copland, LA Philarmonic',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 14,
                                    fontWeight: FontWeight.w300),
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: [
                        Icon(
                          Icons.play_arrow,
                          color: Colors.white.withOpacity(0.8),
                          size: 35,
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 20),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Fanfare for the common man',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Text(
                                'Aaron Copland, LA Philarmonic',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 14,
                                    fontWeight: FontWeight.w300),
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              )),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 20),
                height: 3,
                width: double.infinity,
                color: Color(0xFFB2855B),
              ),
              SizedBox(
                height: 80,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 70),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.house,
                        color: Color(0xFFB2855B).withOpacity(0.5),
                        size: 32,
                      ),
                      Icon(
                        Icons.search,
                        color: Color(0xFFB2855B).withOpacity(0.5),
                        size: 32,
                      ),
                      Icon(
                        Icons.menu,
                        color: Color(0xFFB2855B).withOpacity(0.5),
                        size: 32,
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
        ));
  }
}
