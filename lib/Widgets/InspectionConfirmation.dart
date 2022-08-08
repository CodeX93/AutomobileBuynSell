import 'package:flutter/material.dart';
import 'package:hyser_wheels1/Widgets/HomePage.dart';
import 'package:hyser_wheels1/utilities/constants.dart';

class InspectionConfirmationPage extends StatelessWidget {
  const InspectionConfirmationPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          'Inspection Confirmation',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        backgroundColor: const Color.fromRGBO(86, 36, 237, 10),
      ),
      body: Column(
        children: [
          Expanded(
            child: Center(
              child: Padding(
                  padding: const EdgeInsets.all(10),
                  child: Text(
                    'Your inspection request has been received,\n We will contact you soon',
                    style: kDarkBlueTextStyle.copyWith(fontSize: 30),
                    textAlign: TextAlign.center,
                  )),
            ),
          ),
          SizedBox(
            width: double.infinity,
            height: 60,
            child: TextButton(
              style: TextButton.styleFrom(
                backgroundColor: const Color.fromRGBO(86, 36, 237, 10),
              ),
              onPressed: () {
                Navigator.pushAndRemoveUntil(context,
                    MaterialPageRoute(builder: (context) {
                  return HomePage();
                }), (route) => false);
              },
              child: Text(
                'Go to Home',
                style: kDarkBlueSmallTextStyle.copyWith(
                  color: Colors.white,
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
