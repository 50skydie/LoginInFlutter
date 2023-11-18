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
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          //mainAxisAlignment: MainAxisAlignment.center,
          children: [

            //logo png
            Image.asset(MyImages.imageLogo),

            //Sign in simple text
            Text('Sign in', textAlign: TextAlign.left,
                style: TextStyle(
                    color: MyColors.purpleColor
                )
            ),

            //User Name field
            const TextField(
              decoration: InputDecoration(
                  hintText: 'Email or User Name',
                  border: OutlineInputBorder(),
                  prefixIcon: Icon(Icons.account_circle_outlined)
              ),
            ),

            //Password field
            const TextField(
              decoration: InputDecoration(
                hintText: 'Password',
                border: OutlineInputBorder(),
                prefixIcon: Icon(Icons.account_balance_wallet_outlined)
              ),
            ),

            //Forget Password
            Text('Forget Password ?', textAlign: TextAlign.right,
                style: TextStyle(
                    color: MyColors.purpleColor
                )
            ),

            //Submit button
            ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  backgroundColor: MyColors.purpleColor,
                  padding: EdgeInsets.symmetric(horizontal: 200, vertical: 20),
                ),
                child: Text(
                    'Sign in', style: TextStyle(
                    backgroundColor: MyColors.purpleColor
                ),
                ),
            ),

            //Or sign in With
            const Text('Or sign in With',
                style: TextStyle(
                    color: Colors.deepPurple,
                )
            ),

            // todo 4 icon logos

            // dont have acc text?
            const Text('Don\'t have account ? Sing Up',
                style: TextStyle(
                  color: Colors.deepPurple,
                )
            ),
          ],
        ),
      ),
    );
  }
}
