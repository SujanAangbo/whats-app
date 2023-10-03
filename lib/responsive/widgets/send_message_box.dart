import 'package:flutter/material.dart';
import 'package:whatsapp_ui_clone/utils/colors.dart';

class SendMessageBox extends StatelessWidget {
  const SendMessageBox({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 10),
      color: appBarColor,
      height: MediaQuery.sizeOf(context).height * 0.1,
      child: Row(
        children: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.emoji_emotions_outlined,
              color: Colors.white54,
              size: 28,
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.attach_file_outlined,
              color: Colors.white54,
              size: 28,
            ),
          ),
          const Expanded(
            child: TextField(
              style: TextStyle(color: textColor, fontSize: 16),
              cursorColor: textColor,

              decoration: InputDecoration(
                hintText: "Type a message",
                fillColor: searchBarColor,
                filled: true,
                hintStyle: TextStyle(color: Colors.white30),

                border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(
                    Radius.circular(10),
                  ),
                ),
              ),
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.mic_outlined,
              color: Colors.white54,
              size: 28,
            ),
          ),
        ],
      ),
    );
  }
}
