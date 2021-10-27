import 'dart:ui';

import 'package:box_app_flutter/widget/item_bottom_menu.dart';
import 'package:box_app_flutter/widget/item_collections_workout.dart';
import 'package:box_app_flutter/widget/item_plan_workout.dart';
import 'package:flutter/material.dart';

class BoxHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFEEEEEE),
      body: Column(
        children: [
          Container(
            width: double.infinity,
            margin: EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 70,
                ),
                Text(
                  'Hi, Alberto',
                  style: TextStyle(
                      color: Colors.grey.withOpacity(0.8),
                      fontWeight: FontWeight.w800,
                      fontSize: 16),
                ),
                Text(
                  "LET'S KICK OFF YOUR DAY",
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 22),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              children: [
                Text(
                  "Your plan",
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.w800,
                      fontSize: 22),
                ),
                Spacer(),
                Text(
                  "See all",
                  style: TextStyle(
                      color: Colors.grey.withOpacity(0.8),
                      fontWeight: FontWeight.w800,
                      fontSize: 16),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Container(
            width: double.infinity,
            height: 350,
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Container(
                    width: 80,
                    height: double.infinity,
                    decoration: BoxDecoration(
                        color: Colors.black,
                        borderRadius: BorderRadius.circular(22)),
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Column(
                            children: [
                              Container(
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    shape: BoxShape.circle),
                                width: 8,
                                height: 8,
                                margin: EdgeInsets.only(bottom: 10),
                              ),
                              Text(
                                'Mon',
                                style: TextStyle(
                                    color: Colors.white, fontSize: 12),
                              )
                            ],
                          ),
                          Column(
                            children: [
                              Container(
                                decoration: BoxDecoration(
                                    color: Colors.red,
                                    shape: BoxShape.circle),
                                width: 8,
                                height: 8,
                                margin: EdgeInsets.only(bottom: 10),
                              ),
                              Text(
                                'Tue',
                                style: TextStyle(
                                    color: Colors.red, fontSize: 12),
                              )
                            ],
                          ),
                          Column(
                            children: [
                              Container(
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    shape: BoxShape.circle),
                                width: 8,
                                height: 8,
                                margin: EdgeInsets.only(bottom: 10),
                              ),
                              Text(
                                'Wen',
                                style: TextStyle(
                                    color: Colors.white, fontSize: 12),
                              )
                            ],
                          ),
                          Column(
                            children: [
                              Container(
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    shape: BoxShape.circle),
                                width: 8,
                                height: 8,
                                margin: EdgeInsets.only(bottom: 10),
                              ),
                              Text(
                                'Thu',
                                style: TextStyle(
                                    color: Colors.white, fontSize: 12),
                              )
                            ],
                          ),
                          Column(
                            children: [
                              Container(
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    shape: BoxShape.circle),
                                width: 8,
                                height: 8,
                                margin: EdgeInsets.only(bottom: 10),
                              ),
                              Text(
                                'Fri',
                                style: TextStyle(
                                    color: Colors.white, fontSize: 12),
                              )
                            ],
                          ),
                          Column(
                            children: [
                              Container(
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    shape: BoxShape.circle),
                                width: 8,
                                height: 8,
                                margin: EdgeInsets.only(bottom: 10),
                              ),
                              Text(
                                'Sat',
                                style: TextStyle(
                                    color: Colors.white, fontSize: 12),
                              )
                            ],
                          ),
                          Column(
                            children: [
                              Container(
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    shape: BoxShape.circle),
                                width: 8,
                                height: 8,
                                margin: EdgeInsets.only(bottom: 10),
                              ),
                              Text(
                                'Sun',
                                style: TextStyle(
                                    color: Colors.white, fontSize: 12),
                              )
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Expanded(
                    child: ListView(
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  children: [
                    ItemPlanWorkout(
                        'https://cdn.shopify.com/s/files/1/0063/6092/4211/articles/HF_1024x.jpg?v=1588365932'),
                    ItemPlanWorkout(
                        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRh-v9RTBcHbaIkmCL9LteMHDsU3ncXWrM7EQ&usqp=CAU'),
                    ItemPlanWorkout(
                        'https://kohsamuiphoto.com/wp-content/uploads/2017/01/Muay-Thai-Sport-Portrait-Studio-Shoot-Profile-Photographer-Photography-Thailand-Koh-Samui-01.jpg'),
                    ItemPlanWorkout(
                        'https://d3e1m60ptf1oym.cloudfront.net/b9e1e376-7298-4d4d-a9be-4f5f57c8b3d9/Portrait-sportif-photographe-grenoble-002_uxga.jpg'),
                  ],
                ))
              ],
            ),
          ),
          SizedBox(
            height: 30,
          ),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              children: [
                Text(
                  "Collections",
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.w800,
                      fontSize: 22),
                ),
                Spacer(),
                Text(
                  "See all",
                  style: TextStyle(
                      color: Colors.grey.withOpacity(0.8),
                      fontWeight: FontWeight.w800,
                      fontSize: 16),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Container(
            width: double.infinity,
            height: 150,
            margin: EdgeInsets.only(left: 20),
            child: ListView(
              shrinkWrap: true,
              scrollDirection: Axis.horizontal,
              children: [
                ItemCollectionWorkout(
                    'https://bonpic.com/wallpapers/original/4101.jpg',
                    'BASICS'),
                ItemCollectionWorkout(
                    'https://image.dhgate.com/0x0s/f2-albu-g7-M00-6A-39-rBVaSVudCPeAJfR0AAKQSdhvbZY070.jpg/caja-de-lucha-boxeo-lucha-velocidad-bola.jpg',
                    'WORKOUT'),
                ItemCollectionWorkout(
                    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTkFpTjjBFEggpzYEUaqilaDAJCB8j5x0i957yhiFah1b37vCnOcjBEbesStqdWMGnRIfU&usqp=CAU',
                    'JUMP'),
              ],
            ),
          ),
        ],
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.black,
        onPressed: () {},
        tooltip: 'Home',
        child: Padding(
          padding: const EdgeInsets.all(14.0),
          child: Image.asset('assets/boxing.png'),
        ),
        elevation: 2.0,
      ),
      bottomNavigationBar: FABBottomAppBar(
        onTabSelected: _selectedTab,
        items: [
          FABBottomAppBarItem(iconData: Icons.menu, text: ''),
          FABBottomAppBarItem(iconData: Icons.lock_clock, text: ''),
          FABBottomAppBarItem(iconData: Icons.check_box, text: ''),
          FABBottomAppBarItem(iconData: Icons.person, text: ''),
        ],
        centerItemText: '',
        backgroundColor: Colors.white,
        selectedColor: Colors.black,
        notchedShape: CircularNotchedRectangle(),
        color: Colors.black38,
      ),
    );
  }

  void _selectedTab(int index) {}
}
