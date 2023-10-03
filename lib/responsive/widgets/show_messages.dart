import 'package:flutter/material.dart';
import 'package:whatsapp_ui_clone/responsive/widgets/my_message_card.dart';
import 'package:whatsapp_ui_clone/responsive/widgets/sender_message_card.dart';
import 'package:whatsapp_ui_clone/utils/info.dart';

class ShowMessages extends StatelessWidget {
  // final String message;
  // final String time;

  const ShowMessages({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      scrollDirection: Axis.vertical,
      shrinkWrap: true,
      itemCount: messages.length,
      itemBuilder: (context, index) {
        if (messages[index]['isMe'] == true) {
          return MyMessageCard(
            message: messages[index]['text'].toString(),
            time: messages[index]['time'].toString(),
          );
        }
        return SenderMessageCard(
          message: messages[index]['text'].toString(),
          time: messages[index]['time'].toString(),
        );
      },
    );
  }
}
