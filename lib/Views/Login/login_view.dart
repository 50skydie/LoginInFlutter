import 'dart:js_interop';

import 'package:flutter/material.dart';
import 'package:cwiczenia_mobilki/Utils/colors.dart';
import 'package:cwiczenia_mobilki/Utils/images.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import '../Register/register_view.dart';

class LoginView extends StatefulWidget {
  const LoginView({super.key});

  @override
  State<LoginView> createState() => _LoginViewState();
}

//variables
bool passwordVisible = false;

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
                  prefixIcon: ImageIcon(AssetImage(MyImages.imageEmailIcon), size: 30, color: Colors.deepPurple,)
              ),
            ),

            //Password field
            TextField(
              obscureText: !passwordVisible,
              decoration: InputDecoration(
                  hintText: 'Password',
                  border: OutlineInputBorder(),
                  prefixIcon: ImageIcon(AssetImage(MyImages.imagePasswordIcon), size: 30, color: Colors.deepPurple,),

                  suffixIcon: IconButton(
                    icon: ImageIcon(AssetImage(MyImages.imagePasswordEyeIcon), size: 30, color: Colors.black,),
                    onPressed: () {
                      setState(() {
                        passwordVisible = !passwordVisible;
                      });
                    },
                  ) //
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
            StaggeredGrid.count(
              crossAxisCount: 4,
              mainAxisSpacing: 4,
              crossAxisSpacing: 4,
              children: [
                StaggeredGridTile.count(crossAxisCellCount: 1, mainAxisCellCount: 1, child: Image.asset(MyImages.imageGoogle)),
                StaggeredGridTile.count(crossAxisCellCount: 1, mainAxisCellCount: 1, child: Image.asset(MyImages.imageFacebook)),
                StaggeredGridTile.count(crossAxisCellCount: 1, mainAxisCellCount: 1, child: Image.asset(MyImages.imageX)),
                StaggeredGridTile.count(crossAxisCellCount: 1, mainAxisCellCount: 1, child: Image.asset(MyImages.imageLinkedin)),
              ],
            ),
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
