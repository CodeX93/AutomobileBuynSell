import 'package:flutter/material.dart';
import 'package:hyser_wheels1/Widgets/myDrawer.dart';

import 'AddList.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        floatingActionButton: FloatingActionButton.extended(
            label: Text('Post Add'),
            backgroundColor: Color.fromRGBO(86, 36, 237, 10),
            icon: Icon(
              Icons.add,
              color: Colors.white,
            ),
            onPressed: (() {
              Navigator.pushNamed(context, '/uploadAdd');
            })),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        backgroundColor: Color.fromRGBO(240, 240, 245, 25),
        appBar: AppBar(
          backgroundColor: Color.fromRGBO(86, 36, 237, 10),
          title: Text('Home'),
        ),
        drawer: Drawer(
          child: myDrawer(),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                width: double.infinity,
                child: Image.asset(
                  '/Users/aghashahhyder/Desktop/logo.png',
                ),
              ),
              TextField(
                decoration: InputDecoration(
                  hintText: 'Search Vehicle',
                  prefixIcon: Icon(Icons.search_sharp),
                ),
              ),
              SingleChildScrollView(
                padding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                child: AddList(),
              ),
            ],
          ),
        ));
  }
}
