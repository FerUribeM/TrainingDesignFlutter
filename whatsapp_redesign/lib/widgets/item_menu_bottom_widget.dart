import 'package:flutter/material.dart';

class ItemMenuBottomWidget extends StatelessWidget {

  String _title;
  int? countPending;
  bool selected;

  ItemMenuBottomWidget(this._title, {this.countPending, this.selected = false});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          padding: EdgeInsets.only(left: 12, right: 12, top: 10, bottom: 10),
          margin: EdgeInsets.all(5),
          child: Text(
            _title,
            style: TextStyle(
                color: selected ? Colors.white : Colors.black,
                fontSize: 15,
                fontWeight: FontWeight.w500),
          ),
          decoration: BoxDecoration(
              color: selected ? Colors.green : Color(0xFFFAFBFF),
              borderRadius: BorderRadius.circular(20)
          ),
        ),
        Visibility(
          visible: countPending != null,
          child: Positioned(
            right: 0,
            child: Container(width: 20, height: 20,
              child: Center(
                child: Text("$countPending", style: TextStyle(
                    color: Colors.white, fontSize: 10, fontWeight: FontWeight.bold)),
              ),
              decoration: BoxDecoration(
                color: Colors.green,
                shape: BoxShape.circle,
                border: Border.all(
                    width: 2, color: Colors.white
                ),
              ),),
          ),
        )
      ],
    );
  }
}
