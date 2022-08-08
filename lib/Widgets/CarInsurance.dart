import 'package:flutter/material.dart';
import 'package:hyser_wheels1/utilities/constants.dart';

class CarInsurancePage extends StatefulWidget {
  const CarInsurancePage({Key? key}) : super(key: key);

  @override
  State<CarInsurancePage> createState() => _CarInsurancePageState();
}

class _CarInsurancePageState extends State<CarInsurancePage> {
  String yearValue = '2018';
  String makeValue = 'Honda';
  String modelValue = 'Civic';
  String paymentPlanValue = '3';

/*  List<DropdownMenuItem<String>> model = <String>[
    'Civic',
    'City'
  ].map((String value) {
    return DropdownMenuItem<String>(
      value: value,
      child: Text(value),
    );
  }).toList();

  void updateModelValue(String make) {
    if(make == 'Honda'){
      modelValue = 'Civic';
    }
    modelValue = 'Corolla';
  }

  void getModelList(){
    List<DropdownMenuItem<String>> hondaModels =
      <String>[
        'Civic',
        'City'
      ].map((String value) {
        return DropdownMenuItem<String>(
          value: value,
          child: Text(value),
        );
      }).toList();

    List<DropdownMenuItem<String>> toyotaModels =
    <String>[
      'Corolla',
      'Aqua',
    ].map((String value) {
      return DropdownMenuItem<String>(
        value: value,
        child: Text(value),
      );
    }).toList();


    if(makeValue == 'Honda'){
      modelValue = 'Civic';
      model hondaModels;
    }
    modelValue = 'Corolla';
    return toyotaModels;
  }*/

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          'Car Insurance',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        backgroundColor: const Color.fromRGBO(86, 36, 237, 10),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const SizedBox(
            width: double.infinity,
          ),
          const Image(
            image: NetworkImage(
                'https://cache2.pakwheels.com/system/car_generation_pictures/6345/original/Honda_Civic_Front_Right_Angled.jpg?1647970561'),
          ),
          Center(
            child: Text(
              'Hassle Free Car Insurance',
              style: kDarkBlueTextStyle,
            ),
          ),
          Padding(
              padding: const EdgeInsets.all(10),
              child: Text(
                'Estimated Market Value : ',
                style: kDarkBlueSmallTextStyle,
              )),
          Padding(
            padding: const EdgeInsets.all(10),
            child: TextField(
              keyboardType: TextInputType.number,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                hintText: 'Estimated Markert Value in PKR',
              ),
              onChanged: (value) {},
            ),
          ),
          Expanded(
            child: Column(
              children: [
                Row(
                  children: [
                    const SizedBox(
                      width: 70,
                    ),
                    SizedBox(
                      width: 100,
                      height: 40,
                      child: Text(
                        'Year : ',
                        style: kDarkBlueSmallTextStyle,
                      ),
                    ),
                    const SizedBox(
                      width: 50,
                    ),
                    DropdownButton<String>(
                        value: yearValue,
                        items: yearsList,
                        onChanged: (value) {
                          setState(() {
                            yearValue = value!;
                          });
                        }),
                  ],
                ),
                Row(
                  children: [
                    const SizedBox(
                      width: 70,
                    ),
                    SizedBox(
                      width: 100,
                      height: 40,
                      child: Text(
                        'Make : ',
                        style: kDarkBlueSmallTextStyle,
                      ),
                    ),
                    const SizedBox(
                      width: 50,
                    ),
                    DropdownButton<String>(
                        value: makeValue,
                        items: makeNames,
                        onChanged: (value) {
                          setState(() {
                            makeValue = value!;
                          });
                        }),
                  ],
                ),
                Row(
                  children: [
                    const SizedBox(
                      width: 70,
                    ),
                    SizedBox(
                      width: 100,
                      height: 40,
                      child: Text(
                        'Model : ',
                        style: kDarkBlueSmallTextStyle,
                      ),
                    ),
                    const SizedBox(
                      width: 50,
                    ),
                    DropdownButton<String>(
                        value: modelValue,
                        items: kModels,
                        onChanged: (value) {
                          setState(() {
                            modelValue = value!;
                          });
                        }),
                  ],
                ),
                Row(
                  children: [
                    const SizedBox(
                      width: 70,
                    ),
                    SizedBox(
                      width: 100,
                      height: 40,
                      child: Text(
                        'Payment Plan : ',
                        style: kDarkBlueSmallTextStyle,
                      ),
                    ),
                    const SizedBox(
                      width: 50,
                    ),
                    DropdownButton<String>(
                        value: paymentPlanValue,
                        items: kPaymentPlan,
                        onChanged: (value) {
                          setState(() {
                            paymentPlanValue = value!;
                          });
                        }),
                  ],
                ),
              ],
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
                // we will show payment plans on click
              },
              child: Text(
                'Show Plans',
                style: kDarkBlueSmallTextStyle.copyWith(color: Colors.white),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
