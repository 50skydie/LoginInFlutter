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
        padding: const EdgeInsets.all(30.0),
        child: Column(
          //mainAxisAlignment: MainAxisAlignment.center,
          children: [

            //logo png
            Image.asset(MyImages.imageLogo),

            //Sign in simple text
            const Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: EdgeInsets.only(left: 1.0),
                child: Text('Sign in', textAlign: TextAlign.left,
                  style: TextStyle(
                    color: Colors.deepPurple,
                    fontSize: 30,
                    fontWeight: FontWeight.w700,
                    fontFamily: 'Inter',
                  ),
                ),
              ),
            ),
            const SizedBox(height: 30), //padding
            //User Name field
            TextField(
              decoration: InputDecoration(
                  hintText: 'Email or User Name',
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15.0),
                    borderSide: const BorderSide(
                      width: 2.0,
                      color: Colors.deepPurple,
                    ),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15.0),
                    borderSide: const BorderSide(
                      width: 2.0,
                      color: Colors.deepPurple,
                    ),
                  ),
                  prefixIcon: const ImageIcon(AssetImage(MyImages.imageEmailIcon), size: 30, color: Colors.deepPurple,)
              ),
            ),
            const SizedBox(height: 30), //padding
            //Password field
            TextField(
              obscureText: !passwordVisible,
              decoration: InputDecoration(
                  hintText: 'Password',
                  enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15.0),
                      borderSide: const BorderSide(
                        width: 2.0,
                        color: Colors.deepPurple,
                      ),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15.0),
                    borderSide: const BorderSide(
                      width: 2.0,
                      color: Colors.deepPurple,
                    ),
                  ),
                  prefixIcon: const ImageIcon(AssetImage(MyImages.imagePasswordIcon), size: 30, color: Colors.deepPurple,),

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
            const SizedBox(height: 30), //padding
            //Forget Password
            const Align(
              alignment: Alignment.centerRight,
              child: Padding(
                padding: EdgeInsets.only(left: 1.0),
                child: Text('Forget Password ?', textAlign: TextAlign.right,
                  style: TextStyle(
                    color: Colors.deepPurple,
                    fontSize: 15,
                    fontWeight: FontWeight.w700,
                    fontFamily: 'Inter',
                  ),
                ),
              ),
            ),
            const SizedBox(height: 30),
            //Submit button
            ElevatedButton(
                onPressed: () {},
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all<Color>(MyColors.purpleColor),
                  padding: MaterialStateProperty.all<EdgeInsets>(const EdgeInsets.symmetric(horizontal: (390/2), vertical: (50/2))),
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(RoundedRectangleBorder(borderRadius: BorderRadius.circular(15.0),)
                  ),
                ),
                child: const Text(
                  'Sign in', style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.w700,
                ),
                ),
            ),
            // SizedBox(height: 50), //padding
            //Or sign in With
            const SizedBox(height: 30),
            const Text('Or sign in With',
              style: TextStyle(
                color: Colors.deepPurple,
                fontSize: 15,
                fontWeight: FontWeight.w400,
              ),
            ),
            // todo 4 icon logos
            StaggeredGrid.count(
              crossAxisCount: 4,
              mainAxisSpacing: 1,
              crossAxisSpacing: 1,
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
                  fontSize: 15,
                  fontWeight: FontWeight.w400
                ),
            ),
          ],
        ),
      ),
    );
  }
}
