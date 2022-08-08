import 'package:flutter/material.dart';

import '../FormattingWidgets/FormattingWidgets.dart';

class UploadAdd extends StatelessWidget {
  const UploadAdd({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    String make;
    return Scaffold(
      floatingActionButton: FloatingActionButton.extended(
          label: const Text('Upload Add'),
          backgroundColor: const Color.fromRGBO(86, 36, 237, 10),
          icon: const Icon(
            Icons.save_alt_outlined,
            color: Colors.white,
          ),
          onPressed: (() {
            Navigator.pop(context);
          })),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      appBar: AppBar(
        title: const Text('Sell your Vehicle'),
        backgroundColor: const Color.fromRGBO(86, 36, 237, 10),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const GiveSpaceVertical(),
            Center(
              child: DropdownButtonFormField<String>(
                isExpanded: true,
                hint: const Text('City'),
                alignment: Alignment.center,
                items: <String>[
                  'Rawalpindi',
                  'Islamabad',
                  'Peshawar',
                  'Karachi',
                  'Quetta',
                  'Faislabad',
                  'Multan',
                  'Lahore',
                  'Wah Cantt',
                  'Gujrawala'
                ].map((String value) {
                  return DropdownMenuItem<String>(
                    value: value,
                    child: Text(value),
                  );
                }).toList(),
                onChanged: (value) {
                  print(value);
                },
              ),
            ),
            const GiveSpaceVertical(),
            Center(
              child: DropdownButtonFormField<String>(
                isExpanded: true,
                hint: const Text('Model Year'),
                alignment: Alignment.center,
                items: <int>[
                  2022,
                  2021,
                  2020,
                  2019,
                  2018,
                  2017,
                  2016,
                  2015,
                  2014,
                  2013,
                  2012,
                  2011,
                  2010
                ].map((int value) {
                  return DropdownMenuItem<String>(
                    value: value.toString(),
                    child: Text(value.toString()),
                  );
                }).toList(),
                onChanged: (value) {
                  print(value);
                },
              ),
            ),
            const GiveSpaceVertical(),
            Center(
              child: DropdownButtonFormField<String>(
                isExpanded: true,
                hint: const Text('Make'),
                alignment: Alignment.center,
                items: <String>[
                  'BMW',
                  'Changhan',
                  'DFK Glory',
                  'Ford',
                  'Honda',
                  'Hyndai'
                      'Kia',
                  'Mercedes',
                  'MG',
                  'Toyota',
                  'Suzuki'
                ].map((String value) {
                  return DropdownMenuItem<String>(
                    value: value,
                    child: Text(value),
                  );
                }).toList(),
                onChanged: (value) {
                  make = value.toString();
                  print(value);
                },
              ),
            ),
            const GiveSpaceVertical(),
            Center(
              child: DropdownButtonFormField<String>(
                isExpanded: true,
                hint: const Text('Variant'),
                alignment: Alignment.center,
                items: <String>[
                  '7 Series',
                  'Alsvin',
                  'Oshan',
                  'Falcon',
                  'Civic',
                  'City'
                      'Tucson',
                  'Sportage',
                  'Hs',
                  'Grande',
                  'Land Cruiser'
                ].map((String value) {
                  return DropdownMenuItem<String>(
                    value: value,
                    child: Text(value),
                  );
                }).toList(),
                onChanged: (value) {
                  make = value.toString();
                  print(value);
                },
              ),
            ),
            const GiveSpaceVertical(),
            const Center(
              child: TextField(
                decoration: InputDecoration(
                    hintText: ' Price (Rs)',
                    prefixIcon: Icon(Icons.monetization_on_outlined),
                    prefixIconColor: Colors.green),
                keyboardType: TextInputType.number,
              ),
            ),
            const GiveSpaceVertical(),
            const Center(
              child: TextField(
                decoration: InputDecoration(
                    hintText: ' Mileage',
                    prefixIcon: Icon(Icons.scale),
                    prefixIconColor: Colors.green),
                keyboardType: TextInputType.number,
              ),
            ),
            const GiveSpaceVertical(),
            Center(
              child: DropdownButtonFormField<String>(
                isExpanded: true,
                hint: const Text('Registered City'),
                alignment: Alignment.center,
                items: <String>[
                  'Rawalpindi',
                  'Islamabad',
                  'Peshawar',
                  'Karachi',
                  'Quetta',
                  'Faislabad',
                  'Multan',
                  'Lahore',
                  'Wah Cantt',
                  'Gujrawala'
                ].map((String value) {
                  return DropdownMenuItem<String>(
                    value: value,
                    child: Text(value),
                  );
                }).toList(),
                onChanged: (value) {
                  print(value);
                },
              ),
            ),
            const GiveSpaceVertical(),
            Center(
              child: DropdownButtonFormField<String>(
                isExpanded: true,
                hint: const Text('Assembly'),
                alignment: Alignment.center,
                items: <String>[
                  'Imported',
                  'Local',
                ].map((String value) {
                  return DropdownMenuItem<String>(
                    value: value,
                    child: Text(value),
                  );
                }).toList(),
                onChanged: (value) {
                  print(value);
                },
              ),
            ),
            const GiveSpaceVertical(),
            Center(
              child: DropdownButtonFormField<String>(
                isExpanded: true,
                hint: const Text('City'),
                alignment: Alignment.center,
                items: <String>[
                  'White',
                  'Silver',
                  'Black',
                  'Grey',
                  'Blue',
                  'Red Wine',
                ].map((String value) {
                  return DropdownMenuItem<String>(
                    value: value,
                    child: Text(value),
                  );
                }).toList(),
                onChanged: (value) {
                  print(value);
                },
              ),
            ),
            const GiveSpaceVertical(),
            const Center(
              child: TextField(
                minLines: 1,
                maxLines: 100,
                decoration: InputDecoration(
                  hintText: 'Description',
                  prefixIcon: Icon(
                    Icons.description,
                    color: Color.fromRGBO(86, 36, 237, 10),
                  ),
                ),
              ),
            ),
            const GiveSpaceVertical(),
          ],
        ),
      ),
    );
  }
}
