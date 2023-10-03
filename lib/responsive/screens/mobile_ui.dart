import 'package:flutter/material.dart';
import 'package:whatsapp_ui_clone/responsive/widgets/chats_ui.dart';
import 'package:whatsapp_ui_clone/utils/colors.dart';

class MobileUI extends StatelessWidget {
  const MobileUI({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        floatingActionButton: FloatingActionButton.small(
          backgroundColor: tabColor,
          onPressed: () {},
          child: const Icon(Icons.message, color: Colors.white,),
        ),
        appBar: AppBar(
          backgroundColor: tabColor,
          elevation: 0,
          title: const Text(
            "WhatsApp",
            style: TextStyle(
                color: textColor, fontWeight: FontWeight.bold, fontSize: 24),
          ),
          actions: [
            IconButton(
              color: textColor,
              onPressed: () {},
              icon: const Icon(
                Icons.search,
              ),
            ),
            const SizedBox(
              width: 8,
            ),
            IconButton(
              color: textColor,
              onPressed: () {},
              icon: const Icon(
                Icons.more_vert,
              ),
            ),
          ],
          bottom: const TabBar(
            indicatorColor: Colors.white,
            indicatorSize: TabBarIndicatorSize.tab,
            indicatorWeight: 4.0,
            labelColor: Colors.white,
            unselectedLabelColor: Colors.white38,
            labelStyle: TextStyle(
                fontWeight: FontWeight.bold, letterSpacing: 1.5, fontSize: 15),
            tabs: [
              Tab(text: "CHATS"),
              Tab(text: "STATUS"),
              Tab(text: "CALLS"),
            ],
          ),
        ),
        body: Container(
          color: backgroundColor,
          child: const ChatsUI(),
        ),
      ),
    );
  }
}
