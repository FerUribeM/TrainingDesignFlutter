import 'package:dashed_circle/dashed_circle.dart';
import 'package:flutter/material.dart';

class StoriesWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 80,
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Center(
          child: Row(
            children: [
              SizedBox(width: 10,),
              ItemStories(1, 'https://images.unsplash.com/photo-1488426862026-3ee34a7d66df?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=687&q=80', 'Fernando'),
              ItemStories(4, 'https://images.unsplash.com/photo-1523264766116-1e09b3145b84?ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTF8fHdvbWFufGVufDB8fDB8fA%3D%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60', 'James'),
              ItemStories(2, 'https://images.unsplash.com/photo-1542740348-39501cd6e2b4?ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTV8fHdvbWFufGVufDB8fDB8fA%3D%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60', 'Jessica'),
              ItemStories(3, 'https://images.unsplash.com/photo-1524502397800-2eeaad7c3fe5?ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTZ8fHdvbWFufGVufDB8fDB8fA%3D%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60', 'Pedro'),
              ItemStories(4, 'https://images.unsplash.com/photo-1534751516642-a1af1ef26a56?ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTN8fHdvbWFufGVufDB8fDB8fA%3D%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60', 'Tavo'),
              ItemStories(2, 'https://images.unsplash.com/photo-1557555187-23d685287bc3?ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTl8fHdvbWFufGVufDB8fDB8fA%3D%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60', 'Jimena'),
              ItemStories(5, 'https://images.unsplash.com/photo-1484588168347-9d835bb09939?ixid=MnwxMjA3fDB8MHxzZWFyY2h8MjF8fHdvbWFufGVufDB8fDB8fA%3D%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60','Alejandra'),
            ],
          ),
        ),
      ),
    );
  }
}

class ItemStories extends StatelessWidget {

  final int dashes;
  final String url;
  final String name;

  ItemStories(this.dashes, this.url, this.name);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: 50,
          height: 50,
          margin: EdgeInsets.symmetric(horizontal: 10),
          child: DashedCircle(
            dashes: dashes,
            child: Padding(
              padding: EdgeInsets.all(5.0),
              child: CircleAvatar(
                radius: 20.0,
                backgroundImage: NetworkImage(url),
              ),
            ),
            color: Colors.blue,
          ),
        ),
        Text(this.name)
      ],
    );
  }
}

