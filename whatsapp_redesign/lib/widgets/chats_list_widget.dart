import 'package:flutter/material.dart';
import 'package:whatsapp_redesign/widgets/header_chat_list.dart';
import 'package:whatsapp_redesign/widgets/item_chat_list.dart';

class ChatsListWidget extends StatelessWidget {
  const ChatsListWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: Padding(
      padding: const EdgeInsets.only(top: 20),
      child: Container(
        decoration: BoxDecoration(
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                  color: Colors.black.withOpacity(0.2),
                  offset: Offset(1, 1),
                  blurRadius: 3,
                  spreadRadius: 1)
            ],
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(40), topRight: Radius.circular(40))),
        child: Column(
          children: [
            HeaderChatList('Mensaje', 'Tienes dos mensajes nuevos',
                Icons.archive_outlined),
            Expanded(
                child: ListView(
              children: [
                ItemChatList(
                  'https://scontent.fgdl3-1.fna.fbcdn.net/v/t1.18169-9/19795_1036031059759039_2941383216965828488_n.jpg?_nc_cat=102&ccb=1-5&_nc_sid=174925&_nc_eui2=AeGAZQ6OGx1jdBn4pbOHE6JavUHy49lfnHS9QfLj2V-cdKmjetOuNzNw8kfTo3jRNExfTogLVpVZTvqqdnbCqX7D&_nc_ohc=Kn63kT5EHWkAX8OGrWA&_nc_ht=scontent.fgdl3-1.fna&oh=b612be9586b6e5862773920ced21d0a6&oe=61B452E5',
                  'Fernando Uribe',
                  'Hola, Te envie un correo para verificar el dato',
                  hasPendingMjs: true,
                ),
                ItemChatList(
                    'https://images.unsplash.com/photo-1506794778202-cad84cf45f1d?ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mnx8bWVufGVufDB8fDB8fA%3D%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60',
                    'Albert Dera',
                    'Pasame el tu correo para mandarte la información'),
                ItemChatList(
                    'https://images.unsplash.com/photo-1507003211169-0a1dd7228f2d?ixid=MnwxMjA3fDB8MHxzZWFyY2h8M3x8bWVufGVufDB8fDB8fA%3D%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60',
                    'Joseph Gonzalez',
                    'Pasame el tu correo para mandarte la información',
                    hasPendingMjs: true,
                    selectedChat: true
                ),
                ItemChatList(
                    'https://images.unsplash.com/photo-1506956191951-7a88da4435e5?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1074&q=80',
                    'Jessica Perez',
                    'Pasame el tu correo para mandarte la información'),
                ItemChatList(
                    'https://images.unsplash.com/photo-1485043433441-db091a258e5a?ixid=MnwxMjA3fDB8MHxzZWFyY2h8OHx8d29tYW58ZW58MHx8MHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60',
                    'Elija M.H',
                    'Pasame el tu correo para mandarte la información'),
              ],
            ))
          ],
        ),
      ),
    ));
  }
}
