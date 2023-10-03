import 'package:flutter/material.dart';
import 'package:whatsapp_ui_clone/utils/colors.dart';

class CustomButton extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;

  const CustomButton({Key? key, required this.text, required this.onPressed})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(

          // padding: EdgeInsets.symmetric(vertical: 16, horizontal: 32),
          minimumSize: const Size(double.infinity, 50),
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4)), backgroundColor: tabColor),
        child: Text(
          text,
          style: const TextStyle(color: Colors.white, fontSize: 18),
        ));
  }
}
