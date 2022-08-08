import 'package:flutter/material.dart';

class myDrawer extends StatelessWidget {
  const myDrawer({Key? key}) : super(key: key);
  static const _kFontFam = 'MyDrawer';
  static const String? _kFontPkg = null;
  static const IconData blogger =
      IconData(0xf314, fontFamily: _kFontFam, fontPackage: _kFontPkg);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: const Color.fromRGBO(112, 71, 237, 1),
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          DrawerHeader(
            decoration: const BoxDecoration(
              color: Color.fromRGBO(86, 36, 237, 10),
            ),
            child: Column(
              children: [
                const CircleAvatar(
                  radius: 40,
                  backgroundImage: AssetImage(
                      '/Users/aghashahhyder/Desktop/profilelogo.png'),
                ),
                Container(
                  height: 20,
                ),
                const Text(
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
            leading: const Icon(
              Icons.message,
              color: Colors.white,
            ),
            title: const Text(
              'AutoParts',
              style: TextStyle(color: Colors.white, fontSize: 16),
            ),
            onTap: () {
              Navigator.pushNamed(context, '/AllAutoPartPage');
            },
          ),
          ListTile(
            leading: const Icon(
              Icons.article,
              color: Colors.white,
            ),
            title: const Text(
              'Blogs',
              style: TextStyle(color: Colors.white, fontSize: 16),
            ),
            onTap: () {
              Navigator.pushNamed(context, '/BlogView');
            },
          ),
          ListTile(
            leading: const Icon(
              Icons.safety_check,
              color: Colors.white,
            ),
            title: const Text(
              'Insurance Plan',
              style: TextStyle(color: Colors.white, fontSize: 16),
            ),
            onTap: () {
              Navigator.pushNamed(context, '/CarInsurancePage');
            },
          ),
          ListTile(
            leading: const Icon(
              Icons.compare_arrows,
              color: Colors.white,
            ),
            title: const Text(
              'Vehicle Comparision',
              style: TextStyle(color: Colors.white, fontSize: 16),
            ),
            onTap: () {
              print('Vehicle Comparision');
            },
          ),
          ListTile(
            leading: const Icon(
              Icons.car_repair,
              color: Colors.white,
            ),
            title: const Text(
              'Car Inspection',
              style: TextStyle(color: Colors.white, fontSize: 16),
            ),
            onTap: () {
              Navigator.pushNamed(context, '/CarInspectionPage');
            },
          ),
          ListTile(
            leading: const Icon(
              Icons.help_outlined,
              color: Colors.white,
            ),
            title: const Text(
              'Customer Support',
              style: TextStyle(color: Colors.white, fontSize: 16),
            ),
            onTap: () {
              Navigator.pushNamed(context, '/ContactSupport');
            },
          ),
          ListTile(
            leading: const Icon(
              Icons.logout,
              color: Color.fromRGBO(240, 7, 40, 100),
            ),
            title: const Text(
              'Log Out',
              style: TextStyle(
                  color: Colors.red, fontSize: 16, fontWeight: FontWeight.bold),
            ),
            onTap: () {
              Navigator.pushNamed(context, '/LoginPage');
            },
          ),
        ],
      ),
    );
  }
}
