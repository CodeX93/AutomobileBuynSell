import 'package:flutter/material.dart';
import 'package:hyser_wheels1/utilities/constants.dart';

class CarInspectionPage extends StatefulWidget {
  const CarInspectionPage({Key? key}) : super(key: key);

  @override
  State<CarInspectionPage> createState() => _CarInspectionPageState();
}

class _CarInspectionPageState extends State<CarInspectionPage> {
  String cityValue = 'Islamabad';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          'Car Inspection',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        backgroundColor: const Color.fromRGBO(86, 36, 237, 10),
      ),
      body: Container(
        child: Column(
          children: [
            const Image(
              image: NetworkImage(
                  'https://content.artofmanliness.com/uploads/2020/03/car.jpg'),
            ),
            Padding(
              padding: const EdgeInsets.all(10),
              child: Text(
                'Schedule Car Inspection',
                style: kDarkBlueTextStyle,
              ),
            ),
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Row(
                    children: [
                      const SizedBox(
                        width: 30,
                      ),
                      SizedBox(
                        width: 130,
                        height: 22,
                        child: Text(
                          'City',
                          style: kDarkBlueSmallTextStyle,
                        ),
                      ),
                      DropdownButton<String>(
                          items: cityNames,
                          value: cityValue,
                          onChanged: (value) {
                            setState(() {
                              cityValue = value!;
                            });
                          })
                    ],
                  ),
                  Row(
                    children: [
                      const SizedBox(
                        width: 30,
                      ),
                      SizedBox(
                        width: 130,
                        height: 22,
                        child: Text(
                          'Address',
                          style: kDarkBlueSmallTextStyle,
                        ),
                      ),
                      Container(
                        width: 200,
                        height: 30,
                        child: const TextField(
                          decoration: InputDecoration(
                            hintText: 'Address',
                          ),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      const SizedBox(
                        width: 30,
                      ),
                      SizedBox(
                        width: 130,
                        height: 22,
                        child: Text(
                          'Car Info',
                          style: kDarkBlueSmallTextStyle,
                        ),
                      ),
                      Container(
                        width: 200,
                        height: 30,
                        child: const TextField(
                          decoration: InputDecoration(
                            hintText: 'make/model/version',
                          ),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      const SizedBox(
                        width: 30,
                      ),
                      SizedBox(
                        width: 130,
                        height: 22,
                        child: Text(
                          'Inspection date',
                          style: kDarkBlueSmallTextStyle,
                        ),
                      ),
                      Container(
                        width: 200,
                        height: 30,
                        child: const TextField(
                          decoration: InputDecoration(
                            hintText: '10/10/2020',
                          ),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      const SizedBox(
                        width: 30,
                      ),
                      SizedBox(
                        width: 130,
                        height: 22,
                        child: Text(
                          'Full Name',
                          style: kDarkBlueSmallTextStyle,
                        ),
                      ),
                      Container(
                        width: 200,
                        height: 30,
                        child: const TextField(
                          decoration: InputDecoration(
                            hintText: 'Abdullah Ali',
                          ),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      const SizedBox(
                        width: 30,
                      ),
                      SizedBox(
                        width: 130,
                        height: 22,
                        child: Text(
                          'Phone Number',
                          style: kDarkBlueSmallTextStyle,
                        ),
                      ),
                      Container(
                        width: 200,
                        height: 30,
                        child: const TextField(
                          keyboardType: TextInputType.number,
                          decoration: InputDecoration(
                            hintText: '012345678910',
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Container(
              width: double.infinity,
              height: 60,
              child: TextButton(
                style: TextButton.styleFrom(
                  backgroundColor: const Color.fromRGBO(86, 36, 237, 10),
                ),
                onPressed: () {
                  Navigator.pushNamed(context, '/InspectionConfirmationPage');
                },
                child: Text(
                  'Schedule',
                  style: kDarkBlueSmallTextStyle.copyWith(color: Colors.white),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
