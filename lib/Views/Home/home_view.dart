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
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(30),
        child: Column(
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
                  Text('Witaj test', textAlign: TextAlign.left,
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
              Wrap(
                spacing: 20,
                runSpacing: 20,
                children: [ //hardcoded taski to-do listy
                  Container(
                    height: 100,
                    width: 600,
                    color: Colors.grey,
                    child: const Center(child: Text("Przykładowe zadanie 1"),),
                  ),
                  Container(
                    height: 100,
                    width: 600,
                    color: Colors.grey,
                    child: const Center(child: Text("Przykładowe zadanie 2"),),
                  ),
                  Container(
                    height: 100,
                    width: 600,
                    color: Colors.grey,
                    child: const Center(child: Text("Przykładowe zadanie 3"),),
                  ),
                  Container(
                    height: 100,
                    width: 600,
                    color: Colors.grey,
                    child: const Center(child: Text("Przykładowe zadanie 4"),),
                  ),
                  Container(
                    height: 100,
                    width: 600,
                    color: Colors.grey,
                    child: const Center(child: Text("Przykładowe zadanie 5"),),
                  ),
                  Container(
                    height: 100,
                    width: 600,
                    color: Colors.grey,
                    child: const Center(child: Text("Przykładowe zadanie 6"),),
                  ),
                  Container(
                    height: 100,
                    width: 600,
                    color: Colors.grey,
                    child: const Center(child: Text("Przykładowe zadanie 7"),),
                  ),
                  Container(
                    height: 100,
                    width: 600,
                    color: Colors.grey,
                    child: const Center(child: Text("Przykładowe zadanie 8"),),
                  ),

                ],
              ),
              const SizedBox(height: 40), //padding
            ],
        ),
      ),
    );
  }
}