import 'package:flutter/material.dart';
import 'package:whatsapp_ui_clone/utils/colors.dart';

import '../../utils/info.dart';

class SenderMessageCard extends StatelessWidget {
  final String message;
  final String time;

  const SenderMessageCard({Key? key, required this.message, required this.time})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerLeft,
      child: Padding(
        padding: const EdgeInsets.all(4.0),
        child: Row(
          children: [
            const CircleAvatar(
              backgroundImage: NetworkImage(
                  "https://upload.wikimedia.org/wikipedia/commons/8/85/Elon_Musk_Royal_Society_%28crop1%29.jpg"),
            ),
            ConstrainedBox(
              constraints: BoxConstraints(
                maxWidth: MediaQuery.sizeOf(context).width * 0.75 * 0.75,
              ),
              child: Padding(
                padding: const EdgeInsets.all(4.0),
                child: Card(
                  color: senderMessageColor,
                  margin:
                      const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                  elevation: 1,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Stack(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(
                            right: 10,
                            bottom: 20,
                            top: 5,
                            left: 5
                        ),
                        child: Text(
                          message,
                          style: const TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                          ),
                        ),
                      ),

                      Positioned(
                          bottom: 4,
                          right: 5,
                          child: Row(
                            children: [
                              Text(
                                time,
                                style: const TextStyle(
                                  color: Colors.white38,
                                  fontSize: 11,
                                ),
                              ),
                              const SizedBox(width: 4,),
                              const Icon(Icons.done_all, color: Colors.white38, size: 16,),
                            ],
                          )),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
