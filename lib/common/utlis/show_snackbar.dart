import 'package:flutter/material.dart';

class ShowSnackbar extends StatelessWidget {
  String message;
  ShowSnackbar({Key? key, required this.message}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SnackBar(content: Text(message), );
  }
}
