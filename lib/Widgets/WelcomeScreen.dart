import 'package:flutter/material.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: NetworkImage(
                'https://ak.picdn.net/shutterstock/videos/1021881022/thumb/1.jpg?ip=x480'),
            fit: BoxFit.fitHeight,
          ),
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Text(
                'Welcome',
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 40),
              ),
              IconButton(
                onPressed: (() {
                  Navigator.pushNamed(context, '/LoginPage');
                }),
                icon: const Icon(Icons.forward, size: 40, color: Colors.white),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
