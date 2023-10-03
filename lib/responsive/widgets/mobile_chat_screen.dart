import 'package:flutter/material.dart';
import 'package:whatsapp_ui_clone/responsive/widgets/chats_ui.dart';
import 'package:whatsapp_ui_clone/responsive/widgets/send_message_box.dart';
import 'package:whatsapp_ui_clone/responsive/widgets/show_messages.dart';
import 'package:whatsapp_ui_clone/utils/colors.dart';

import '../../utils/info.dart';

class MobileChatScreen extends StatelessWidget {
  final int index;

  const MobileChatScreen({Key? key, required this.index}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: false,
        backgroundColor: appBarColor,
        foregroundColor: Colors.white,
        title: Text(
          info[index]['name'].toString(),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.video_call,
              size: 25,
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.call,
              size: 25,
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.more_vert,
              size: 25,
            ),
          ),
        ],
      ),
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            fit: BoxFit.cover,
            image: AssetImage('asset/backgroundImage.png'),
          ),
        ),
        child: const Column(
          children: [
            Expanded(
              child: ShowMessages(),
            ),
            SendMessageBox(),
          ],
        ),
      ),
    );
  }
}
