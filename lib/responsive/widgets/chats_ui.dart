import 'package:flutter/material.dart';
import 'package:whatsapp_ui_clone/responsive/widgets/mobile_chat_screen.dart';
import 'package:whatsapp_ui_clone/utils/colors.dart';
import 'package:whatsapp_ui_clone/utils/info.dart';

class ChatsUI extends StatelessWidget {
  const ChatsUI({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8),
      child: ListView.builder(
          scrollDirection: Axis.vertical,
          shrinkWrap: true,
          itemCount: info.length,
          itemBuilder: (context, index) {
            return Column(
              children: [
                InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => MobileChatScreen(index: index),
                      ),
                    );
                  },
                  child: ListTile(
                    title: Text(
                      "${info[index]['name']}",
                      maxLines: 1,
                      style: const TextStyle(
                          overflow: TextOverflow.ellipsis, color: Colors.white),
                    ),
                    leading: CircleAvatar(
                      radius: 30,
                      backgroundImage:
                          NetworkImage("${info[index]['profilePic']}"),
                    ),
                    subtitle: Text(
                      "${info[index]['message']}",
                      maxLines: 1,
                      style: const TextStyle(
                        overflow: TextOverflow.ellipsis,
                        color: Colors.grey,
                      ),
                    ),
                    trailing: Text(
                      "${info[index]['time']}",
                      style: const TextStyle(color: Colors.grey),
                    ),
                  ),
                ),
                const Divider(
                  height: 10,
                  color: dividerColor,
                ),
              ],
            );
          }),
    );
  }
}
