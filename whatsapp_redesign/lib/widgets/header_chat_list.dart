import 'package:flutter/material.dart';

class HeaderChatList extends StatelessWidget {

  final String _title;
  final String _subTitle;
  final IconData _icon;

  HeaderChatList(this._title, this._subTitle, this._icon);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 90,
      child: Row(
        children: [
          Expanded(
            child: Container(
              padding: EdgeInsets.only(left: 30),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    _title,
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 22,
                        fontWeight: FontWeight.bold),
                  ),
                  Text(
                    _subTitle,
                    style: TextStyle(
                        color: Colors.black.withOpacity(0.5),
                        fontSize: 16,
                        fontWeight: FontWeight.w300),
                  )
                ],
              ),
            ),
            flex: 3,
          ),
          Expanded(
            child: Center(
              child: Icon(
                _icon,
                color: Colors.black,
                size: 32,
              ),
            ),
            flex: 1,
          )
        ],
      ),
    );
  }

}
