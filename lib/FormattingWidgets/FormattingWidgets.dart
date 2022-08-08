import 'package:flutter/material.dart';
class GiveSpaceVertical extends StatelessWidget {
  const GiveSpaceVertical({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 15,
      width: double.infinity,
    );
  }
}
class GiveSpaceHorizontal extends StatelessWidget{


  @override
  Widget build(BuildContext context) {
    return Container(

        width: 15
    );
  }



}
