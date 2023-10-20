import 'package:flutter/material.dart';
import 'package:testgroupb/modules/account.dart';
import 'package:testgroupb/modules/forms/adapters/screens/actividad.dart';

class AccountNavigation extends StatelessWidget {
  const AccountNavigation({super.key});
 
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/account',
      routes: {
        '/account' : (context) => Account(),
           './actividad':(context)=>const Actividad()
      },
    );
  }
}
