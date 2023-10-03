import 'package:flutter/material.dart';
import 'package:whatsapp_ui_clone/utils/colors.dart';

class WebSearchBar extends StatelessWidget {
  const WebSearchBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 6),
      height: 40,
      child: const TextField(
        textAlignVertical: TextAlignVertical.center,
        decoration: InputDecoration(
          filled: true,
          fillColor: webAppBarColor,
          hintText: "Search or Start a new chat",
          hintStyle: TextStyle(color: Colors.white, fontSize: 14,),
          prefixIcon: Icon(Icons.search, color: Colors.white,),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.all(
              Radius.circular(10),
            ),
          ),
          contentPadding: EdgeInsets.all(8),
        ),
      ),
    );
  }
}
