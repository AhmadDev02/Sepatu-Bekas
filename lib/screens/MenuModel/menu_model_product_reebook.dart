import 'package:flutter/material.dart';
import 'package:flutter_project_saya/screens/halaman_produk/reebok/reebok1.dart';
import 'package:flutter_project_saya/screens/halaman_produk/reebok/reebok2.dart';
import 'package:flutter_project_saya/screens/halaman_produk/reebok/reebok3.dart';

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

class MenuModelProductReebok extends StatelessWidget {
  const MenuModelProductReebok({super.key});
  static String routeName = '/menuModelProductReebok';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Menu Brand Product Reebok",
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
                chillTitle: "MEN SHOES - WHITE",
                harga: "Rp. 879.200",
                title: "REEBOK CLASSIC LEATHER",
                image: 'assets/image/reebok/reebok1/1.webp',
                onTap: () => Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const Reebok1()),
                ),
              ),
              CustomCard(
                title: "REEBOK ROYAL BB4590",
                chillTitle: "UNISEX SHOES",
                harga: "Rp. 799.200",
                image: 'assets/image/reebok/reebok2/1.webp',
                onTap: () => Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const Reebok2()),
                ),
              ),
              CustomCard(
                title: "REEBOK BB 4000",
                chillTitle: "MEN'S LIFESTYLE SHOES",
                harga: "Rp. 1.599.000",
                image: 'assets/image/reebok/reebok3/1.webp',
                onTap: () => Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const Reebok3()),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
