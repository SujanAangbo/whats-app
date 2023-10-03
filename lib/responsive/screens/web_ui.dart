import 'package:flutter/material.dart';
import 'package:whatsapp_ui_clone/responsive/widgets/chat_app_bar.dart';
import 'package:whatsapp_ui_clone/responsive/widgets/chats_ui.dart';
import 'package:whatsapp_ui_clone/responsive/widgets/send_message_box.dart';
import 'package:whatsapp_ui_clone/responsive/widgets/show_messages.dart';
import 'package:whatsapp_ui_clone/responsive/widgets/web_search_bar.dart';
import 'package:whatsapp_ui_clone/utils/colors.dart';
import 'package:whatsapp_ui_clone/utils/info.dart';

import '../widgets/show_web_bar.dart';

class WebUI extends StatelessWidget {
  const WebUI({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        children: [
           Expanded(
            child: Container(
              color: backgroundColor,
              child: const SingleChildScrollView(
                child: Column(
                  children: [
                    // app bar ...
                    ShowWebBar(),
                    WebSearchBar(),
                    ChatsUI(),
                  ],
                ),
              ),
            ),
          ),
          Container(
            // margin: const EdgeInsets.all(8),
            width: MediaQuery.sizeOf(context).width * 0.75,
            // child: Image.asset('asset/backgroundImage.png'),
            decoration: const BoxDecoration(
              image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage('asset/backgroundImage.png'),
              ),
            ),
            child: const Column(
              children: [
                // chatappbar
                ChatAppBar(),
                // chats
                Expanded(child: ShowMessages()),
                // chatbox to send message
                SendMessageBox(),
              ],
            ),
          )
        ],
      ),
    );
  }
}
