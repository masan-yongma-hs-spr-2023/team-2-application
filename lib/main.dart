import 'package:flutter/material.dart';
import 'first_screen.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Yongma IOT Toilet',
      theme: ThemeData(
        primaryColor: Colors.grey,),
      home: const HomeScreen(),
      );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Yongma IOT Toilet"),
      ),
      bottomNavigationBar: const BottomAppBar(
        color: Colors.blueGrey,
        child: Align(
          heightFactor: 2.2,
          alignment: Alignment.center,
          child: Text('Made by Yomgma Pepsi              V.2.1.231116-alpha',
          style: TextStyle(fontSize: 17)),
        ),
      ),
      body: Container(
        decoration: const BoxDecoration(
          color: Colors.blueGrey,
        ),
        child: Column(

          mainAxisAlignment: MainAxisAlignment.center,
          children: [

            const Text(
              ' ',
              style: TextStyle(fontSize: 100),

            ),
            Image.asset(
              'assets/logo 복사본.png',
              width: 300.0,
              height: 300.0,
            ),
            const Text(
              ' ',
              style: TextStyle(fontSize: 20),

            ),
            const CircularProgressIndicator(),
            Expanded(
              child: ListView(
                children: [
                  ListTile(
                    title: const Center(child: Text('Start!',
                    style: TextStyle(fontSize: 30))),
                    onTap: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) => const FirstScreen()));
                    },
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}