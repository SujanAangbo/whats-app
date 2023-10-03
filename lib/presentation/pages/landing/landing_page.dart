import 'package:flutter/material.dart';
import 'package:whatsapp_ui_clone/common/widgets/custom_button.dart';
import 'package:whatsapp_ui_clone/presentation/pages/auth/screens/phone_login.dart';
import 'package:whatsapp_ui_clone/utils/colors.dart';

class LandingPage extends StatelessWidget {
  const LandingPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Container(
            width: double.maxFinite,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const SizedBox(height: 20),
                const Text(
                  "Welcome to WhatsApp",
                  style: TextStyle(color: Colors.white, fontSize: 33),
                  textAlign: TextAlign.center,
                ),
                SizedBox(height: size.height / 9),
                Image.asset(
                  'asset/bg.png',
                  height: 300,
                  width: 300,
                  color: tabColor,
                ),
                SizedBox(height: size.height / 9),
                const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text(
                    'Read our privacy policy. Tap "Agree and continue" to accept the Terms of Service.',
                    style: TextStyle(color: Colors.grey, fontSize: 16),
                    textAlign: TextAlign.center,
                  ),
                ),
                const SizedBox(height: 20),
                SizedBox(
                  width: size.width * 0.75,
                  child: CustomButton(
                    text: "ACCEPT AND CONTINUE",
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const PhoneLogin(),
                        ),
                      );
                    },
                  ),
                )
              ],
            ),
          ),
        ));
  }
}
