import 'package:flutter/material.dart';
import 'package:hyser_wheels1/FormattingWidgets/FormattingWidgets.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(212, 200, 224, 10),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image.asset('/Users/aghashahhyder/Downloads/loginPage.png'),
          const SizedBox(
            height: 40,
            width: double.infinity,
          ),
          const TextField(
            decoration: InputDecoration(
              label: Text('Username'),
              hintText: 'Enter username',
              prefixIcon: Icon(Icons.person),
            ),
            obscureText: false,
          ),
          const GiveSpaceVertical(),
          const TextField(
            decoration: InputDecoration(
              label: Text('Password'),
              hintText: 'Enter password',
              prefixIcon: Icon(Icons.password),
            ),
            obscureText: true,
          ),
          const SizedBox(
            height: 5,
            width: double.infinity,
          ),
          TextButton(
            onPressed: (() {}),
            child: const Text('Forgot Password?'),
          ),
          const SizedBox(
            height: 20,
            width: double.infinity,
          ),
          IconButton(
              onPressed: (() {
                Navigator.pushNamed(context, '/HomePage');
              }),
              icon: const Icon(
                Icons.login,
                color: const Color.fromRGBO(86, 36, 237, 10),
                size: 40,
              ))
        ],
      ),
    );
  }
}
