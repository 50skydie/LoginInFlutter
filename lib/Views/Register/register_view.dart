import 'package:flutter/material.dart';
import 'package:cwiczenia_mobilki/Utils/images.dart';
import 'package:cwiczenia_mobilki/Utils/colors.dart';
import '../Login/login_view.dart';

class RegisterView extends StatefulWidget {
  const RegisterView({super.key});

  @override
  State<RegisterView> createState() => _RegisterViewState();
}

//variables
bool passwordVisible1 = false;
bool passwordVisible2 = false;

class _RegisterViewState extends State<RegisterView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: const EdgeInsets.only(left: 1.0),
                  child: TextButton.icon(
                    icon: Image.asset('assets/images/back_icon.png'),
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    label: const Text(
                      'Back',
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w300,
                        color: Colors.deepPurple,
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 30),
              const Align(
                  alignment: Alignment.centerLeft,
                  child: Padding(
                    padding: EdgeInsets.only(left: 1.0),
                    child:
                    Text('Rejestracja', textAlign: TextAlign.left,
                      style: TextStyle(
                        color: Colors.deepPurple,
                        fontSize: 30,
                        fontWeight: FontWeight.w700,
                        fontFamily: 'Inter',
                      ),
                    ),
                  ),
              ),

              TextField(
                decoration: InputDecoration(
                    hintText: 'Imię',
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

              TextField(
                decoration: InputDecoration(
                    hintText: 'Email',
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
                    prefixIcon: const ImageIcon(AssetImage(MyImages.imageEmailIcon2), size: 30, color: Colors.deepPurple,)
                ),
              ),

              TextField(
                obscureText: !passwordVisible1,
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
                          passwordVisible1 = !passwordVisible1;
                        });
                      },
                    ) //
                ),
              ),

              TextField(
                obscureText: !passwordVisible2,
                decoration: InputDecoration(
                    hintText: 'Potwierdź Hasło',
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
                          passwordVisible2 = !passwordVisible2;
                        });
                      },
                    ) //
                ),
              ),

              ElevatedButton(
                onPressed: () {},
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all<Color>(MyColors.purpleColor),
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(RoundedRectangleBorder(borderRadius: BorderRadius.circular(15.0))),
                  minimumSize: MaterialStateProperty.all<Size>(const Size.fromHeight(50)),
                ),
                child: const Text(
                  'Zarejestruj się', style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.w700,
                ),
                ),
              ),
              const SizedBox(height: 30),
              Column(children: [
                Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                  const Flexible (
                      child: Text (
                        "Masz już konto?",
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
                        Navigator.push(context, MaterialPageRoute(builder: (context) => const LoginView()),);
                      },
                      child: const Text('Zaloguj się',
                          style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                          )))
                ]),],
              ),

              ],
        ),
      ),
    );
  }
}
