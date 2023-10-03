
import 'package:flutter/material.dart';
import 'package:whatsapp_ui_clone/presentation/pages/landing/landing_page.dart';
import 'package:whatsapp_ui_clone/responsive/responsive_ui.dart';
import 'package:whatsapp_ui_clone/responsive/screens/mobile_ui.dart';
import 'package:whatsapp_ui_clone/responsive/screens/web_ui.dart';
import 'package:whatsapp_ui_clone/utils/colors.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: appBarColor,
      // body: ResponsiveUI(mobileUI: const MobileUI(), webUI: const WebUI(),),
      body: LandingPage(),
    );
  }
}
