import 'package:flutter/material.dart';
import 'package:testgroupb/kernel/colors/colors_app.dart';

class Account extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(title: const Text('Perfil'),
      backgroundColor: ColorsApp.primaryColor,),
      body : const Center(child: Text('ACCOUNT'),)
    );
  }
}