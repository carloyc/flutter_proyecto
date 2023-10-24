import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/widgets.dart';
import 'package:testgroupb/kernel/colors/colors_app.dart';

class CustomCarousel extends StatefulWidget {
  final List<Widget> itemList;
  final double carouselHeight;
  final double indicatorHeight;
  final double indicatorWidth;

  const CustomCarousel(
      {Key? key,
      required this.itemList,
      this.carouselHeight = 150,
      this.indicatorWidth = 20,
      this.indicatorHeight = 8});

  @override
  State<CustomCarousel> createState() => _CustomCarouselState();
}

class _CustomCarouselState extends State<CustomCarousel> {
  int _currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CarouselSlider(
            items: widget.itemList,
            options: CarouselOptions(
              height: widget.carouselHeight,
              autoPlay: true,
              onPageChanged: (index, reason) {
                setState(() {
                  _currentIndex = index;
                });
              },
            )),
            Row(mainAxisAlignment: MainAxisAlignment.center,
            children: widget.itemList.map((item) {
              int index = widget.itemList.indexOf(item);
              return Container(
                width: widget.indicatorWidth,
                height: widget.indicatorHeight,
                margin: const EdgeInsets.symmetric(horizontal: 3,vertical: 10),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  color: _currentIndex==index  ? ColorsApp.successColor :ColorsApp.secondaryColor,
                ),
              );
            }).toList(),)

      ],
    );
  }
}
