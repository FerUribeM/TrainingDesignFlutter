import 'package:flutter/material.dart';
import 'package:whatsapp_redesign/widgets/app_bar_whatsapp.dart';
import 'package:whatsapp_redesign/widgets/chats_list_widget.dart';
import 'package:whatsapp_redesign/widgets/item_menu_bottom_widget.dart';
import 'package:whatsapp_redesign/widgets/stories_widget.dart';

class WhatsappHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xFFFAFBFF),
        appBar: appBarWhatsapp(),
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
          backgroundColor: Colors.green,
          child: Icon(Icons.add),
        ),
        bottomNavigationBar: Container(
          color: Color(0xFFFAFBFF),
          height: 80,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                ItemMenuBottomWidget('Chats', selected: true, countPending: 10,),
                ItemMenuBottomWidget('Grupos', countPending: 5,),
                ItemMenuBottomWidget('Estados'),
                ItemMenuBottomWidget('Llamados'),
              ],
            ),
          ),
        ),
        body: Column(
          children: [
            SizedBox(height: 10,),
            StoriesWidget(),
            ChatsListWidget(),
          ],
        ));
  }
}
