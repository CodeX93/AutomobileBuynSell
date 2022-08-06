import 'package:flutter/material.dart';

import '../FormattingWidgets/FormattingWidgets.dart';

class ContactSupport extends StatelessWidget {
  const ContactSupport({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton.extended(
        label: Text('Send Mail'),
          backgroundColor: Color.fromRGBO(86, 36, 237, 10),
          icon: Icon(
            Icons.mail,
            color: Colors.white,
          ),
          onPressed: (() {
            print('Mail is sent to Provided address via API');
          })),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      backgroundColor: Color.fromRGBO(86, 36, 237, 10),
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(86, 36, 237, 10),
        title: Text('Contact Support'),
        actions: [
          Icon(
            (Icons.support_agent_outlined),
            size: 30,
          )
        ],
      ),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        color: Colors.white,
        child: Column(
          children: [
            GiveSpaceVertical(),
            TextField(
              keyboardType: TextInputType.text,
              decoration: InputDecoration(
                hintText: 'Subject',
              ),
            ),
            GiveSpaceVertical(),
            GiveSpaceVertical(),
            TextField(
              minLines: 1,
              maxLines: 1000,
              keyboardType: TextInputType.text,
              decoration: InputDecoration(
                hintText: 'Write your Query',
              ),
            ),
          ],
        ),
      ),
    );
  }
}
