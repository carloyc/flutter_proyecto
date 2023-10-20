import 'package:flutter/material.dart';
import 'package:testgroupb/modules/home.dart';

class HomeNavigation extends StatelessWidget {
  const HomeNavigation({super.key});
 
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/home',
      routes: {
        '/home' : (context) => Home(),
     
      },
    );
  }
}
