import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:testgroupb/kernel/colors/colors_app.dart';
import 'package:testgroupb/kernel/widgets/custom_carrousel.dart';
import 'package:testgroupb/modules/account.dart';
import 'package:testgroupb/modules/home.dart';

class News extends StatefulWidget {
  const News({super.key});

  @override
  State<News> createState() => _NewsState();
}

class _NewsState extends State<News> {
  @override
  Widget build(BuildContext context) {
    final List<Widget> itemList = [
      Account(),
      Home(),
      FirstSection(),
    ];
    return Scaffold(
      appBar: AppBar(
        title: const Center(child: Text('Noticias del dia ')),
        backgroundColor: ColorsApp.primaryColor,
      ),
      body: Center(
          child: CustomCarousel(
        itemList: itemList,
        carouselHeight: 300,
      )),
    );
  }
}

class FirstSection extends StatelessWidget {
  const FirstSection({super.key});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Card(
      elevation: 5,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
      child: Column(children: [
        Image.asset('assets/images/logo-utez.png',
            height: 100, width: width, fit: BoxFit.fitWidth),
        Container(
            padding: const EdgeInsets.all(16),
            child: const Align(
                alignment: Alignment.topLeft,
                child: Text('Utez - escuela de disque calidad ',
                    style: TextStyle(fontWeight: FontWeight.bold))))
      ]),
    );
  }
}
