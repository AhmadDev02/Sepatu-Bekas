import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class CarouselImage extends StatelessWidget {
  CarouselImage({super.key});

  final List<String> images = [
    'assets/image/puma/cover_puma.webp',
    'assets/image/puma/cover puma 1.jpeg',
    'assets/image/converse/cover2.jpg',
    'assets/image/reebok/cover1.jpg',
    'assets/image/converse/cover.jpg',
    'assets/image/6.jpg'
  ];

  List<Widget> generateImagesTiles() {
    return images
        .map((e) => ClipRRect(
              borderRadius: BorderRadius.circular(15.0),
              child: Image.asset(
                e,
                fit: BoxFit.fill,
              ),
            ))
        .toList();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children: [
          Container(
            padding: const EdgeInsets.only(
              top: 25,
              bottom: 25,
            ),
            decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(12),
                  bottomRight: Radius.circular(12),
                ),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey,
                    spreadRadius: 1,
                    blurRadius: 5,
                    offset: Offset(6, 6),
                  ),
                ]),
            child: Stack(
              children: [
                CarouselSlider(
                  items: generateImagesTiles(),
                  options: CarouselOptions(
                    enlargeCenterPage: true,
                    autoPlay: true,
                    aspectRatio: 16 / 8,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
