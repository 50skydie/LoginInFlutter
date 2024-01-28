import 'package:flutter/material.dart';
import 'package:cwiczenia_mobilki/Utils/images.dart';
import 'package:cwiczenia_mobilki/Utils/colors.dart';
import '../Login/login_view.dart';

class HomeView extends StatefulWidget
{
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(15),
        child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Align(
                alignment: Alignment.topLeft,
                child: Padding(
                  padding: const EdgeInsets.only(top: 15.0),
                  child:  TextButton.icon(
                    icon: Image.asset('assets/images/back_icon.png'),
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    label: const Text(
                      'Wyloguj',
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w300,
                        color: Colors.deepPurple,
                      ),
                    ),
                  ),
                ),
              ),

              const Align(
                alignment: Alignment.center,
                child: Padding(
                  padding: EdgeInsets.all(30.0),
                  child:
                  Text('Witaj <nazwa_użytkownika>', textAlign: TextAlign.left,
                    style: TextStyle(
                      color: Colors.deepPurple,
                      fontSize: 20,
                      fontWeight: FontWeight.w300,
                      fontFamily: 'Inter',
                    ),
                  ),
                ),
              ),

              const Align(
                alignment: Alignment.center,
                child: Padding(
                  padding: EdgeInsets.all(30.0),
                  child:
                  Text('Twoje Zadania', textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.deepPurple,
                      fontSize: 30,
                      fontWeight: FontWeight.w700,
                      fontFamily: 'Inter',
                    ),
                  ),
                ),
              ),

              const SingleChildScrollView(
                child: Column(
                  children: <Widget>[
                    //todo crud's
                  ],
                ),
              )

            ]
        ),
      ),
    );
  }
}