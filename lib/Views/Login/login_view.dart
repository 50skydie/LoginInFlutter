import 'package:cwiczenia_mobilki/Views/Home/home_view.dart';
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
final emailController = TextEditingController();
final passController = TextEditingController();

Future _loginError(BuildContext context) {
  return showDialog(
      context: context,
      builder: (BuildContext context) {
        return         AlertDialog (
          title: const Text("Złe dane logowania"),
          content: const Text("Wprowadź prawidłowe dane. Prawidłowe dane testowe to test/test"),
          actions: [
            TextButton(
              style: TextButton.styleFrom(
                textStyle: Theme.of(context).textTheme.labelLarge,
              ),
              child: const Text("OK"),
              onPressed: () {Navigator.of(context).pop();},
            ),
          ],
        );
      }
  );
}

class _LoginViewState extends State<LoginView> {
  @override

  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(30.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            //logo png
            Image.asset(MyImages.imageLogo),
            //Sign in simple text
            const Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: EdgeInsets.only(left: 1.0),
                child: Text('Logowanie', textAlign: TextAlign.left,
                  style: TextStyle(
                    color: Colors.deepPurple,
                    fontSize: 30,
                    fontWeight: FontWeight.w700,
                    fontFamily: 'Inter',
                  ),
                ),
              ),
            ),
            //const SizedBox(height: 30), //padding
            //User Name field
            TextField(
              controller: emailController,
              decoration: InputDecoration(
                  hintText: 'E-mail',
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
            //const SizedBox(height: 10), //padding
            //Password field
            TextField(
              obscureText: !passwordVisible,
              controller: passController,
              decoration: InputDecoration(
                  hintText: 'Hasło',
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
                    icon: const ImageIcon(AssetImage(MyImages.imagePasswordEyeIcon), size: 30, color: Colors.black,),
                    onPressed: () {
                      setState(() {
                        passwordVisible = !passwordVisible;
                      });
                    },
                  ) //
              ),
            ),
            //const SizedBox(height: 30), //padding
            //Forget Password
            Align(
              alignment: Alignment.centerRight,
              child: Padding(
                padding: const EdgeInsets.only(left: 1.0),
                child: TextButton(
                  style: TextButton.styleFrom(
                    foregroundColor: Colors.deepPurple,
                  ),
                    onPressed: () {},
                    child: const Text('Zapomniałeś hasła?',
                        style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                        ),),),
              ),
            ),
            //const SizedBox(height: 30),



            //Submit button
            ElevatedButton(
                onPressed: () {
                  if (emailController.text == "test" && passController.text == "test") {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => const HomeView()),);
                  } else {
                    _loginError(context);
                  }

                  },
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all<Color>(MyColors.purpleColor),
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(RoundedRectangleBorder(borderRadius: BorderRadius.circular(15.0))),
                  minimumSize: MaterialStateProperty.all<Size>(const Size.fromHeight(50)),
                ),
                child: const Text(
                  'Zaloguj', style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.w700,
                ),
                ),
            ),
            // SizedBox(height: 50), //padding
            //Or sign in With
            //const SizedBox(height: 30),
            const Text('Zaloguj za pomocą',
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
            //const SizedBox(height: 50), //padding
            Column(children: [
              Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                const Flexible (
                child: Text (
                "Nie masz konta?",
              style: TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.w300,
                color: Colors.deepPurple,
              ),
            )),
                TextButton(
                  style: TextButton.styleFrom(
                    foregroundColor: Colors.deepPurple,
                  ),
                    onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => const RegisterView()),);
                    },
                    child: const Text('Zarejestruj się',
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                    )))
                ]),],
            )],
        ),
      ),
    );
  }
}
