import 'package:flutter/material.dart';
import 'package:whatsapp_ui_clone/responsive/screens/mobile_ui.dart';
import 'package:whatsapp_ui_clone/responsive/screens/web_ui.dart';

class ResponsiveUI extends StatelessWidget {
  MobileUI mobileUI;
  WebUI webUI;
  ResponsiveUI({Key? key, required this.mobileUI, required this.webUI}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      return constraints.maxWidth > 900.0 ? webUI : mobileUI;
    });
  }
}
