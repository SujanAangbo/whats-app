import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:whatsapp_ui_clone/presentation/pages/auth/repository/phone_auth.dart';

import 'phone_auth_impl_test.mocks.dart';

@GenerateNiceMocks([MockSpec<FirebaseAuth>()])
void main() {
  late PhoneAuthImpl sut;
  late MockFirebaseAuth mAuth;

  setUp(() async {
    mAuth = MockFirebaseAuth();
    sut = PhoneAuthImpl(auth: mAuth);
  });

  group("Check if the select the country", () {

    test('if user select the country', () async{

      // when(mAuth.signInWithPhoneNumber('+9779827931150')).thenAnswer(
      //         (_) async => ConfirmationResult());
      //
      // final res = await sut.signInWithPhoneNumber(countryCode: '+977', phoneNumber: '9827931150');
      //
      // //assert
      // verify(mAuth.signInWithPhoneNumber('+9779827931150'));
      // expect(res, "SignIn Successful");

    });
  });

  // test(description, () => null)
}