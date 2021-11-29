import 'package:flutter/material.dart';

class ItemChatList extends StatelessWidget {

  final String _url;
  final String _name;
  final String _lastMessage;
  final bool hasPendingMjs;
  final bool selectedChat;

  ItemChatList (this._url, this._name, this._lastMessage, { this.hasPendingMjs = false, this.selectedChat = false});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      margin: EdgeInsets.only(bottom: 10, left: 5),
      color: selectedChat ? Colors.blue.withOpacity(0.1) : Colors.white,
      child: Row(
        children: [
          Visibility(
            visible: selectedChat,
            child: Container(
              width: 4,
              color: Colors.green,
            ),
          ),
          Expanded(
            child: Container(
              child: Stack(
                alignment: Alignment.center,
                children: [
                  CircleAvatar(
                    radius: 25.0,
                    backgroundImage: NetworkImage(_url),
                  ),
                  Visibility(
                    visible: hasPendingMjs,
                    child: Positioned(
                      top: 0,
                      right: 10,
                      child: Container(width: 13, height: 13, decoration: BoxDecoration(
                          border: Border.all(
                              width: 2, color: Colors.white
                          ),
                          color: Colors.green,
                          shape: BoxShape.circle
                      ),),
                    ),
                  ),
                ],
              ),
            ),
            flex: 1,
          ),
          Expanded(
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 10),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(_name,
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 15,
                              fontWeight: FontWeight.bold)),
                      Padding(
                        padding: const EdgeInsets.only(right: 10),
                        child: Text('10:20 am',
                            style: TextStyle(color: Colors.black26)),
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 5),
                    child: Text(_lastMessage,
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(color: Colors.black45, fontSize: 14)),
                  ),
                ],
              ),
            ),
            flex: 4,
          )
        ],
      ),
    );
  }
}
