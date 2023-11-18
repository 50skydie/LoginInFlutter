import 'package:flutter/material.dart';
import 'package:cwiczenia_mobilki/Utils/colors.dart';
import 'package:cwiczenia_mobilki/Utils/images.dart';

import '../Register/register_view.dart';

class LoginView extends StatefulWidget {
  const LoginView({super.key});

  @override
  State<LoginView> createState() => _LoginViewState();
}

//todo swoj wlasny widget, do wprowadzania textu z dowolna ikonka i standart textem

class _LoginViewState extends State<LoginView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Image.asset(MyImages.imageLogo),
          ElevatedButton(
            child: Text('Sign up',
                style: TextStyle(
                    color: MyColors.purpleColor)),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const RegisterView()),
              );
            },
          ),
        ],
      ),
    );
  }
}
