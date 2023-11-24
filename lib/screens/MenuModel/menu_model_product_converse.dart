import 'package:flutter/material.dart';
import 'package:flutter_project_saya/screens/halaman_produk/converse/converse1.dart';
import 'package:flutter_project_saya/screens/halaman_produk/converse/converse2.dart';
import 'package:flutter_project_saya/screens/halaman_produk/converse/converse3.dart';

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
                child: Image.asset(image, fit: BoxFit.cover),
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

class MenuModelProductConverse extends StatelessWidget {
  const MenuModelProductConverse({super.key});
  static String routeName = '/menuModelProductConverse';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Menu Brand Product Converse",
          style: TextStyle(
            color: Colors.black,
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
        ),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios),
          onPressed: () => Navigator.of(context).pop(),
        ),
        elevation: 5.0,
      ),
      body: Column(
        children: [
          GridView.count(
            crossAxisCount: 2,
            childAspectRatio: 0.68,
            physics: const NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            children: [
              CustomCard(
                chillTitle: "HER MOVE",
                harga: "Rp. 999.000",
                title: "Chuck Taylor All Star",
                image: 'assets/image/converse/converse1/1.jpg',
                onTap: () => Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const Converse1()),
                ),
              ),
              CustomCard(
                title: "Chuck 71",
                chillTitle: "CANVAS SEASON",
                harga: "Rp. 999.000",
                image: 'assets/image/converse/converse2/1.jpg',
                onTap: () => Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const Converse2()),
                ),
              ),
              CustomCard(
                title: "Chuck 70",
                chillTitle: "CANVAS SEASON",
                harga: "Rp. 1.099.000",
                image: 'assets/image/converse/converse3/1.jpg',
                onTap: () => Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const Converse3()),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
