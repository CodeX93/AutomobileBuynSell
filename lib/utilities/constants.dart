import 'package:flutter/material.dart';

final kDarkBlueTextStyle = TextStyle(
  fontWeight: FontWeight.bold,
  color: Colors.blue[900],
  fontSize: 25,
);

final kDarkBlueSmallTextStyle = TextStyle(
  fontWeight: FontWeight.bold,
  color: Colors.blue[900],
  fontSize: 18,
);

final List<DropdownMenuItem<String>> yearsList = <int>[
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
}).toList();

final List<DropdownMenuItem<String>> cityNames = <String>[
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
}).toList();

final List<DropdownMenuItem<String>> makeNames = <String>[
  'BMW',
  'Changhan',
  'DFK Glory',
  'Ford',
  'Honda',
  'Hyndai',
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
}).toList();

final List<DropdownMenuItem<String>> kModels = <String>[
  '7 Series',
  'Alsvin',
  'Oshan',
  'Falcon',
  'Civic',
  'City',
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
}).toList();

final List<DropdownMenuItem<String>> kPaymentPlan = <int>[
  1,
  2,
  3,
  4,
  5,
].map((int value) {
  return DropdownMenuItem<String>(
    value: value.toString(),
    child: Text(value.toString()),
  );
}).toList();
