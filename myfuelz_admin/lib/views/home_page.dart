import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_admin_scaffold/admin_scaffold.dart';

import 'screens/banners.dart';
import 'screens/customers.dart';
import 'screens/dashbord.dart';
import 'screens/tankers.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  Widget _selectedItem = const DashboardScreen();


  ScreenSelector(item) {
    switch (item.route) {
      case DashboardScreen.routeName:
        setState(() {
          _selectedItem = const DashboardScreen();
        });

        break;

      case Customers.routeName:
        setState(() {
          _selectedItem = const Customers();
        });

        break;

      case Tankers.routeName:
        setState(() {
          _selectedItem = const Tankers();
        });

        break;

      case Banners.routeName:
        setState(() {
          _selectedItem = const Banners();
        });

        break;
    }
  }

  @override
  Widget build(BuildContext context) {
    return AdminScaffold(
      backgroundColor: Colors.white54,
      appBar: AppBar(
          backgroundColor: Colors.blue.shade900,
          title: const Text('Management', style: TextStyle(color: Colors.white),),
          iconTheme: const IconThemeData(color: Colors.white),
      ),

      sideBar: SideBar(
        items: const [
          AdminMenuItem(
              title: 'Dashbord',
              icon: Icons.dashboard,
              route: DashboardScreen.routeName),
          AdminMenuItem(
            title: 'Customers',
            icon: CupertinoIcons.person_3,
            route: Customers.routeName,
          ),
          AdminMenuItem(
              title: 'Tankers',
              icon: CupertinoIcons.person_3_fill,
              route: Tankers.routeName),
          AdminMenuItem(
              title: 'Orders',
              icon: CupertinoIcons.shopping_cart,
              route: '/'),
          AdminMenuItem(
              title: 'Banner Uplod',
              icon: CupertinoIcons.add,
              route: Banners.routeName),
        ],
        selectedRoute: '',
        onSelected: (item) {
          ScreenSelector(item);
        },
      ),
      body: _selectedItem,
    );
  }
}

