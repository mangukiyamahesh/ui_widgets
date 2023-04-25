import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class DemoMobile extends StatefulWidget {
  const DemoMobile({Key? key}) : super(key: key);

  @override
  State<DemoMobile> createState() => _DemoMobileState();
}

class _DemoMobileState extends State<DemoMobile> {
  FirebaseAuth auth = FirebaseAuth.instance;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(
          child: const Text('send'),
          onPressed: () async {
            await auth.verifyPhoneNumber(
              phoneNumber: '+91 8141491437',
              verificationCompleted: (phoneAuthCredential) {
                print('phoneAuthCredential ${phoneAuthCredential.smsCode}');
                print(
                    'phoneAuthCredential ${phoneAuthCredential.verificationId}');
                print('phoneAuthCredential ${phoneAuthCredential.accessToken}');
                print('phoneAuthCredential ${phoneAuthCredential.providerId}');
                print(
                    'phoneAuthCredential ${phoneAuthCredential.signInMethod}');
              },
              verificationFailed: (error) {},
              codeSent: (verificationId, forceResendingToken) {
                print('verificationId $verificationId');
                print('forceResendingToken ${forceResendingToken}');
              },
              codeAutoRetrievalTimeout: (verificationId) {},
            );
          },
        ),
      ),
    );
  }
}
