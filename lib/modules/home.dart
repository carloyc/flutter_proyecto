import 'package:flutter/material.dart';
import 'package:testgroupb/modules/forms/adapters/screens/first_form.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(

        /*    appBar: AppBar(
        title: const Text('Inicio'),
        backgroundColor: ColorsApp.primaryColor,
      ),*/

        body: FirstForm()
        
        
        );
  }
}
