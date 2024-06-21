import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

import '../../../../frequent_used_widget/custom_phone_layout.dart';

/// A stateful widget that demonstrates the use of a [Drawer] in Flutter.
/// This widget includes an app bar, a drawer with user account information,
/// and various navigation options.
class DrawerExplain extends StatefulWidget {
  /// Creates a [DrawerExplain] widget.
  const DrawerExplain({super.key});

  @override
  State<DrawerExplain> createState() => _DrawerExplainState();
}

class _DrawerExplainState extends State<DrawerExplain> {
  @override
  Widget build(BuildContext context) {
    return CustomPhoneLayout(
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Drawer Demo'),
          centerTitle: true,
        ),
        drawer: Drawer(
          backgroundColor: HexColor('#011f4b').withOpacity(0.9),
          child: ListView(
            children: [
              Container(
                padding: EdgeInsets.zero,
                decoration: const BoxDecoration(
                  color: Colors.black,
                ),
                child: const UserAccountsDrawerHeader(
                  accountName: Text(
                    'Flutter Demo',
                    style: TextStyle(
                        color: Colors.black, fontWeight: FontWeight.w900),
                  ),
                  accountEmail: Text(
                    'prashantxyz173@gmail.com',
                    style: TextStyle(
                        color: Colors.black, fontWeight: FontWeight.w500),
                  ),
                  currentAccountPicture: CircleAvatar(
                    backgroundImage: AssetImage('assets/images/logo_no_bg.png'),
                  ),
                ),
              ),
              const ListTile(
                leading: Icon(Icons.group, size: 35.0),
                title: Text('New Group'),
              ),
              const ListTile(
                leading: Icon(Icons.contact_page, size: 35.0),
                title: Text('Contacts', style: TextStyle(fontSize: 15.0)),
              ),
              const ListTile(
                leading: Icon(Icons.call, size: 35.0),
                title: Text('Calls', style: TextStyle(fontSize: 15.0)),
              ),
              const ListTile(
                leading: Icon(Icons.location_on, size: 35.0),
                title:
                    Text('Nearby Locations', style: TextStyle(fontSize: 15.0)),
              ),
              const ListTile(
                leading: Icon(Icons.bookmark, size: 35.0),
                title: Text('Saved Items', style: TextStyle(fontSize: 15.0)),
              ),
              const ListTile(
                leading: Icon(Icons.settings, size: 35.0),
                title: Text('Settings', style: TextStyle(fontSize: 15.0)),
              ),
              Container(
                child: const Divider(
                  thickness: 4,
                ),
              ),
              const ListTile(
                leading: Icon(Icons.person_add, size: 35.0),
                title: Text('Invite Friends', style: TextStyle(fontSize: 15.0)),
              ),
              const ListTile(
                leading: Icon(Icons.star, size: 35.0),
                title: Text('App Features', style: TextStyle(fontSize: 15.0)),
              ),
            ],
          ),
        ),
        body: const Center(
          child: Text(
            'Home Page',
            style: TextStyle(
              fontSize: 30.0,
            ),
          ),
        ),
      ),
    );
  }
}
