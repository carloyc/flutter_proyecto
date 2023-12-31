import 'package:flutter/material.dart';
import 'package:testgroupb/kernel/colors/colors_app.dart';

class CustomBottomNavigationTab extends StatelessWidget {
  final int selectedIndex;
  
  final Function(int) onItemTapped;

  const CustomBottomNavigationTab({
    Key? key,
    required this.selectedIndex,
    required this.onItemTapped
  });

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      items: const <BottomNavigationBarItem>[
        BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Inicio'),
        BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Actividad'),
          BottomNavigationBarItem(icon: Icon(Icons.newspaper), label: 'News')
      ],
      currentIndex: selectedIndex,
      selectedItemColor: ColorsApp.primaryColor,
      onTap: onItemTapped,
    );
  }
}