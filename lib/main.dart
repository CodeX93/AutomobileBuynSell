import 'package:flutter/material.dart';
import 'package:hyser_wheels1/Widgets/ContactSupport.dart';

import 'Widgets/Blog.dart';
import 'Widgets/HomePage.dart';
import 'Widgets/uploadAdd.dart';
import 'Widgets/uploadBlog.dart';

void main(){runApp(myApp());}

class myApp extends StatelessWidget {
  const myApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/',
      routes: {
        // When navigating to the "/" route, build the FirstScreen widget.
        '/HomePage': (context) => const HomePage(),
        // When navigating to the "/second" route, build the SecondScreen widget.
        '/uploadAdd': (context) => const UploadAdd(),
        '/BlogView': (context) => const BlogView(),
        '/uploadBlog': (context) => const uploadBlog(),
        '/ContactSupport': (context) => const ContactSupport(),
      },
      home: HomePage(),
    );
  }
}
