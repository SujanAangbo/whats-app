import 'package:firebase_auth/firebase_auth.dart';
import 'package:whatsapp_ui_clone/common/utlis/show_snackbar.dart';

abstract class PhoneAuth {
  FirebaseAuth auth;

  PhoneAuth({required this.auth});

  Future<String> signIn(
      {required String countryCode, required String phoneNumber});
}

class PhoneAuthImpl extends PhoneAuth {
  PhoneAuthImpl({required super.auth});

  @override
  Future<String> signIn(
      {required String countryCode, required String phoneNumber}) async {
    try {
      print('inside method');

      final res = await auth.verifyPhoneNumber(
        phoneNumber: '$countryCode$phoneNumber',
          verificationCompleted: (credential) {
            print('inside completed');
            ShowSnackbar(message: 'Completed');
          },
          verificationFailed: (exception) {
            print('inside error');
            ShowSnackbar(message: exception.message!);
          },
          codeSent: (str, integer) {
            print('inside code sent');
            ShowSnackbar(message: 'Code Sent');
          },
          codeAutoRetrievalTimeout: (_) {});
      return 'successful';
    } on FirebaseAuthException {
      throw FirebaseAuthException(code: '202');
    }
  }
}









