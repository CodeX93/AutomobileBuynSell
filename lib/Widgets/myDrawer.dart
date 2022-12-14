import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:hyser_wheels1/Widgets/ContactSupport.dart';

class myDrawer extends StatelessWidget {
  const myDrawer({Key? key}) : super(key: key);
  static const _kFontFam = 'MyDrawer';
  static const String? _kFontPkg = null;
  static const IconData blogger =
      IconData(0xf314, fontFamily: _kFontFam, fontPackage: _kFontPkg);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Color.fromRGBO(112, 71, 237, 1),
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          DrawerHeader(
            decoration: BoxDecoration(
              color: Color.fromRGBO(86, 36, 237, 10),
            ),
            child: Column(
              children: [
                CircleAvatar(
                  radius: 40,
                  backgroundImage: AssetImage(
                      '/Users/aghashahhyder/Desktop/profilelogo.png'),
                ),
                Container(
                  height: 20,
                ),
                Text(
                  'Profile Name ',
                  style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
          ),
          ListTile(
            leading: Icon(
              Icons.message,
              color: Colors.white,
            ),
            title: Text(
              'AutoParts',
              style: TextStyle(color: Colors.white, fontSize: 16),
            ),
            onTap: () {
              print('Buy Auto Parts');
            },
          ),
          ListTile(
            leading: Icon(
              Icons.article,
              color: Colors.white,
            ),
            title: Text(
              'Blogs',
              style: TextStyle(color: Colors.white, fontSize: 16),
            ),
            onTap: () {
              Navigator.pushNamed(context, '/BlogView');
            },
          ),
          ListTile(
            leading: Icon(
              Icons.safety_check,
              color: Colors.white,
            ),
            title: Text(
              'Insurance Plan',
              style: TextStyle(color: Colors.white, fontSize: 16),
            ),
            onTap: () {
              print('Insurance Plan');
            },
          ),
          ListTile(
            leading: Icon(
              Icons.compare_arrows,
              color: Colors.white,
            ),
            title: Text(
              'Vehicle Comparision',
              style: TextStyle(color: Colors.white, fontSize: 16),
            ),
            onTap: () {
              print('Vehicle Comparision');
            },
          ),
          ListTile(
            leading: Icon(
              Icons.car_repair,
              color: Colors.white,
            ),
            title: Text(
              'Car Inspection',
              style: TextStyle(color: Colors.white, fontSize: 16),
            ),
            onTap: () {
              print('Car Inspection');
            },
          ),
          ListTile(
            leading: Icon(
              Icons.help_outlined,
              color: Colors.white,
            ),
            title: Text(
              'Customer Support',
              style: TextStyle(color: Colors.white, fontSize: 16),
            ),
            onTap: () {
              Navigator.pushNamed(context, '/ContactSupport');
            },
          ),
          ListTile(
            leading: Icon(
              Icons.logout,
              color: Color.fromRGBO(240, 7, 40,100),
            ),
            title: Text(
              'Log Out',
              style: TextStyle(
                  color: Colors.red, fontSize: 16, fontWeight: FontWeight.bold),
            ),
            onTap: () {
              print('Log Out');
            },
          ),
        ],
      ),
    );
  }
}
