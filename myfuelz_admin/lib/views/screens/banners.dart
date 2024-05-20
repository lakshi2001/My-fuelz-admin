import 'package:flutter/material.dart';

class Banners extends StatefulWidget {
  static const String routeName = '/Banners';
  const Banners({super.key});

  @override
  State<Banners> createState() => _BannersState();
}

class _BannersState extends State<Banners> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Text('baners'),
    );
  }
}
