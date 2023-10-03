import 'package:firebase_auth/firebase_auth.dart';
import 'package:fl_country_code_picker/fl_country_code_picker.dart';
import 'package:flutter/material.dart';
import 'package:whatsapp_ui_clone/common/widgets/custom_button.dart';
import 'package:whatsapp_ui_clone/presentation/pages/auth/repository/phone_auth.dart';
import 'package:whatsapp_ui_clone/utils/colors.dart';

class PhoneLogin extends StatefulWidget {
  const PhoneLogin({Key? key}) : super(key: key);

  @override
  State<PhoneLogin> createState() => _PhoneLoginState();
}

class _PhoneLoginState extends State<PhoneLogin> {
  TextEditingController phoneNumberController = TextEditingController();
  CountryCode? countryCode;
  FlCountryCodePicker codePicker = const FlCountryCodePicker();

  void pickCountry() {}

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.sizeOf(context);

    return Scaffold(
      backgroundColor: appBarColor,
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          "Enter your phone number",
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const SizedBox(height: 10),
                const Text(
                  'WhatsApp will need to verify your phone number.',
                  style: TextStyle(color: textColor, fontSize: 16),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: 10),
                TextButton(
                  onPressed: () async {
                    CountryCode? code =
                        await codePicker.showPicker(context: context);
                    setState(() {
                      countryCode = code;
                    });
                  },
                  child: const Text('Pick country'),
                ),
                const SizedBox(height: 20),
                Row(
                  children: [
                    if (countryCode != null)
                      Text(
                        countryCode!.dialCode,
                        style: const TextStyle(fontSize: 14, color: textColor),
                      ), // show only if the country code is not null

                    const SizedBox(
                      width: 10,
                    ),
                    SizedBox(
                      width: size.width * 0.7,
                      height: 50,
                      child: TextField(
                        style: const TextStyle(color: textColor),
                        controller: phoneNumberController,
                        keyboardType: TextInputType.number,
                        decoration: const InputDecoration(
                            hintText: 'phone number',
                            hintStyle: TextStyle(color: Colors.grey)),
                      ),
                    )
                  ],
                )
              ],
            ),
            SizedBox(
              width: size.width * 0.25,
              child: CustomButton(
                  text: 'Next',
                  onPressed: () {
                    PhoneAuthImpl(auth: FirebaseAuth.instance).signIn(
                        countryCode: countryCode!.dialCode,
                        phoneNumber: phoneNumberController.text);
                  }),
            ),
          ],
        ),
      ),
    );
  }
}
