import 'dart:ui';

import 'package:flutter/material.dart';

class ItemWorkoutsSelected extends StatefulWidget {

  final String name;

  ItemWorkoutsSelected(this.name);

  @override
  _ItemWorkoutsSelectedState createState() => _ItemWorkoutsSelectedState();
}

class _ItemWorkoutsSelectedState extends State<ItemWorkoutsSelected> {

  bool isSelected = false;

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.transparent,
      child: InkWell(
        onTap: () {
          setState(() {
            isSelected = !isSelected;
          });
        },
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 5),
          child: Container(
            width: double.infinity,
            height: 80,
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
                        child: Row(
                          children: [
                            Container(
                              width: 80,
                              height: 60,
                              child: ClipRRect(
                                borderRadius:
                                BorderRadius.circular(8.0),
                                child: Image.network(
                                    'https://images.unsplash.com/photo-1517438322307-e67111335449?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1171&q=80',
                                    fit: BoxFit.cover),
                              ),
                            ),
                            Expanded(
                              child: Padding(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 20),
                                child: Column(
                                  crossAxisAlignment:
                                  CrossAxisAlignment.start,
                                  mainAxisAlignment:
                                  MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      widget.name,
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 18,
                                          fontWeight:
                                          FontWeight.bold),
                                    ),
                                    SizedBox(
                                      height: 10,
                                    ),
                                    Text(
                                      '00:30',
                                      style: TextStyle(
                                          color: Color(0xFF7F8090)),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Container(
                              width: 80,
                              height: 30,
                              child: CircleAvatar(
                                backgroundColor: isSelected ? Color(0xFF1E222E) : Colors.pink,
                                child: Icon(Icons.check, color: isSelected ? Color(0xFF7F8090) : Color(0xFF1E222E)),
                              ),
                            )
                          ],
                        ),
                      ),
                    ))),
          ),
        ),
      ),
    );
  }
}
