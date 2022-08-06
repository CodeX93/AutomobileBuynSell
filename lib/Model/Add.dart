import 'package:hyser_wheels1/Model/Vehicle.dart';
import 'package:intl/intl.dart';
import 'package:intl/intl_browser.dart';
import 'Seller.dart';

class Adds{

  String AddId;
  DateTime publishInfo;
  String Description;
  double price;
  Vehicle vehicle;
  Seller seller;

  Adds(this.AddId, this.publishInfo, this.Description, this.vehicle,
      this.seller,this.price);


}