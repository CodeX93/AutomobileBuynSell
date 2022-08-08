import 'package:flutter/material.dart';
import 'package:hyser_wheels1/FormattingWidgets/FormattingWidgets.dart';

class AllAutoPartPage extends StatelessWidget {
  const AllAutoPartPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Auto Parts'),
        backgroundColor: const Color.fromRGBO(86, 36, 237, 10),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const GiveSpaceVertical(),
            const TextField(
              decoration: InputDecoration(
                hintText: 'Search Auto Parts',
                prefixIcon: Icon(
                  Icons.car_repair,
                  color: Colors.purple,
                ),
              ),
            ),
            const GiveSpaceVertical(),
            const GiveSpaceVertical(),
            Card(
              margin: const EdgeInsets.all(8),
              elevation: 5,
              child: Row(
                children: [
                  const SizedBox(
                      width: 100,
                      height: 50,
                      child: Image(
                          image: NetworkImage(
                              'https://image.made-in-china.com/2f0j00ugMRhzFjHVcr/Factory-Price-Fricwel-Auto-Parts-High-Performance-Clutch-Plate-for-Toyota-Cars-OEM-ISO9001-Ts16949.jpg'))),
                  Column(
                    children: [
                      const Text(
                        'Product Name',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      Row(
                        children: [
                          GiveSpaceHorizontal(),
                          const Text('attribute 1'),
                          GiveSpaceHorizontal(),
                          const Text('attribute 2'),
                          GiveSpaceHorizontal(),
                          const Text('attribute 3'),
                        ],
                      )
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
