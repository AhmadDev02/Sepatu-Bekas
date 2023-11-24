import 'package:flutter/material.dart';
import 'package:flutter_project_saya/screens/MenuModel/menu_brand.dart';
import 'package:flutter_project_saya/screens/MenuModel/menu_model_product_adidas.dart';
import 'package:flutter_project_saya/screens/MenuModel/menu_model_product_converse.dart';
import 'package:flutter_project_saya/screens/MenuModel/menu_model_product_nike.dart';
import 'package:flutter_project_saya/screens/MenuModel/menu_model_product_puma.dart';
import 'package:flutter_project_saya/screens/MenuModel/menu_model_product_reebook.dart';
import 'package:flutter_project_saya/screens/carousel/carousel_screen.dart';
import 'package:flutter_project_saya/screens/halaman_produk/adidas/adidas1.dart';
import 'package:flutter_project_saya/screens/halaman_produk/converse/converse1.dart';
import 'package:flutter_project_saya/screens/halaman_produk/nike/nike1.dart';
import 'package:flutter_project_saya/screens/halaman_produk/reebok/reebok1.dart';

class CustomCard extends StatelessWidget {
  final String chillTitle;
  final String harga;
  final String title;
  final String image;
  final VoidCallback onTap;

  const CustomCard({
    super.key,
    required this.chillTitle,
    required this.harga,
    required this.title,
    required this.image,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.all(10),
        child: Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10.0),
          ),
          elevation: 5,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              ClipRRect(
                borderRadius: BorderRadius.circular(10.0),
                child: Image.asset(
                  image,
                  fit: BoxFit.cover,
                  height: 165,
                  width: 200,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(10), // Nilai padding yang hilang
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      title,
                      style: const TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                    Text(
                      chillTitle,
                      style: const TextStyle(
                        fontSize: 12,
                        color: Colors.black,
                      ),
                    ),
                    Text(
                      harga,
                      style: const TextStyle(fontSize: 12, color: Colors.black),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});
  static String routeName = '/homescreen';

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints) {
          return Scaffold(
            body: SingleChildScrollView(
              child: Column(
                children: [
                  const CarouselImage(),
                  const SizedBox(
                    height: 20,
                  ),
                  const TextColumPertama(),
                  const FrameBrandProduct(),
                  Column(
                    children: [
                      const Padding(
                        padding: EdgeInsets.only(left: 5, right: 5),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text(
                              "Menu",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.black,
                                fontSize: 18,
                              ),
                            ),
                          ],
                        ),
                      ),
                      GridView.count(
                        crossAxisCount: 2,
                        childAspectRatio: 0.68,
                        physics: const NeverScrollableScrollPhysics(),
                        shrinkWrap: true,
                        children: [
                          CustomCard(
                            chillTitle: "BLUE/WHITE [ID5003]",
                            harga: "Rp. 2.250.000",
                            title: "SUPERSTAR GOLF SHOES",
                            image: 'assets/image/adidas/adidas1/1.webp',
                            onTap: () => Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const Adidas1()),
                            ),
                          ),
                          CustomCard(
                            title: "Chuck Taylor All Star Move Platform",
                            chillTitle: "HER MOVE",
                            harga: "Rp. 999.000",
                            image: 'assets/image/converse/converse1/1.jpg',
                            onTap: () => Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const Converse1()),
                            ),
                          ),
                          CustomCard(
                            title: "Nike Structure 25",
                            chillTitle: "Women's Road Running",
                            harga: "Rp. 2.099.000",
                            image: 'assets/image/nike/nike1/3.webp',
                            onTap: () => Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const Nike1()),
                            ),
                          ),
                          CustomCard(
                            title: "REEBOK CLASSIC LEATHER MEN",
                            chillTitle: "SHOES - WHITE",
                            harga: "Rp. 879.200",
                            image: 'assets/image/reebok/reebok1/1.webp',
                            onTap: () => Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const Reebok1()),
                            ),
                          )
                        ],
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 100,
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}

class CustumCard extends StatelessWidget {
  final String title;
  final String image;
  final String chillTitle;
  final String harga;
  final VoidCallback onTap;

  const CustumCard({
    Key? key,
    required this.title,
    required this.chillTitle,
    required this.harga,
    required this.image,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(
        left: 15,
        right: 15,
        top: 10,
      ),
      margin: const EdgeInsets.all(8),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.white,
        boxShadow: const [
          BoxShadow(color: Colors.grey, blurRadius: 4, offset: Offset(0, 4))
        ],
      ),
      child: Column(
        children: [
          InkWell(
            onTap: onTap,
            child: Padding(
              padding: const EdgeInsets.only(
                left: 5,
                right: 5,
                top: 10,
              ),
              child: Image.asset(
                image,
                width: 200,
                fit: BoxFit.fill,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 8, top: 5),
            child: Column(
              children: [
                Container(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    title,
                    style: const TextStyle(
                        color: Colors.black,
                        fontSize: 16,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                Container(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    chillTitle,
                    style: const TextStyle(
                      color: Colors.black,
                      fontSize: 12,
                    ),
                  ),
                ),
                Container(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    harga,
                    style: const TextStyle(
                        color: Colors.black,
                        fontSize: 12,
                        fontWeight: FontWeight.bold),
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

class FrameBrandProduct extends StatelessWidget {
  const FrameBrandProduct({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => const MenuModelProductPuma()),
              );
            },
            child: Container(
              margin: const EdgeInsets.only(top: 10, bottom: 10, left: 15),
              padding: const EdgeInsets.all(5),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.white,
                boxShadow: const [
                  BoxShadow(
                      color: Colors.grey, blurRadius: 4, offset: Offset(0, 4))
                ],
              ),
              child: Row(
                children: [
                  Stack(
                    alignment: Alignment.center,
                    children: [
                      Image.asset(
                        'assets/image/icon1.png',
                        height: 65,
                        width: 65,
                        fit: BoxFit.contain,
                      )
                    ],
                  ),
                ],
              ),
            ),
          ),
          GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => const MenuModelProductReebok()),
              );
            },
            child: Container(
              margin: const EdgeInsets.only(top: 10, bottom: 10, left: 15),
              padding: const EdgeInsets.all(5),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.white,
                boxShadow: const [
                  BoxShadow(
                      color: Colors.grey, blurRadius: 4, offset: Offset(0, 4))
                ],
              ),
              child: Row(
                children: [
                  Stack(
                    alignment: Alignment.center,
                    children: [
                      Image.asset(
                        'assets/image/icon2.png',
                        height: 65,
                        width: 65,
                        fit: BoxFit.contain,
                      )
                    ],
                  ),
                ],
              ),
            ),
          ),
          GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => const MenuModelProductAdidas()),
              );
            },
            child: Container(
              margin: const EdgeInsets.only(top: 10, bottom: 10, left: 15),
              padding: const EdgeInsets.all(5),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.white,
                boxShadow: const [
                  BoxShadow(
                      color: Colors.grey, blurRadius: 4, offset: Offset(0, 4))
                ],
              ),
              child: Row(
                children: [
                  Stack(
                    alignment: Alignment.center,
                    children: [
                      Image.asset(
                        'assets/image/icon3.png',
                        height: 65,
                        width: 65,
                        fit: BoxFit.contain,
                      )
                    ],
                  ),
                ],
              ),
            ),
          ),
          GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => const MenuModelProductNike()),
              );
            },
            child: Container(
              margin: const EdgeInsets.only(top: 10, bottom: 10, left: 15),
              padding: const EdgeInsets.all(5),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.white,
                boxShadow: const [
                  BoxShadow(
                      color: Colors.grey, blurRadius: 4, offset: Offset(0, 4))
                ],
              ),
              child: Row(
                children: [
                  Stack(
                    alignment: Alignment.center,
                    children: [
                      Image.asset(
                        'assets/image/icon4.png',
                        height: 65,
                        width: 65,
                        fit: BoxFit.contain,
                      )
                    ],
                  ),
                ],
              ),
            ),
          ),
          GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => const MenuModelProductConverse()),
              );
            },
            child: Container(
              margin: const EdgeInsets.only(top: 10, bottom: 10, left: 15),
              padding: const EdgeInsets.all(5),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.white,
                boxShadow: const [
                  BoxShadow(
                      color: Colors.grey, blurRadius: 4, offset: Offset(0, 4))
                ],
              ),
              child: Row(
                children: [
                  Stack(
                    alignment: Alignment.center,
                    children: [
                      Image.asset(
                        'assets/image/converse.png',
                        height: 65,
                        width: 65,
                        fit: BoxFit.contain,
                      )
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class TextColumPertama extends StatelessWidget {
  const TextColumPertama({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 5, right: 5),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(
                "Brand Product",
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 18,
                    fontWeight: FontWeight.bold),
              ),
              TextButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const MenuBrand()),
                  );
                },
                child: const Text(
                  "Lihat Semua",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 12,
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
