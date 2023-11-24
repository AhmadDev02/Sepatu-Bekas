import 'package:flutter/material.dart';
import 'package:flutter_project_saya/screens/halaman_produk/adidas/adidas1.dart';
import 'package:flutter_project_saya/screens/halaman_produk/adidas/adidas2.dart';
import 'package:flutter_project_saya/screens/halaman_produk/adidas/adidas3.dart';

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
                      style: const TextStyle(fontSize: 10, color: Colors.black),
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

class MenuModelProductAdidas extends StatelessWidget {
  const MenuModelProductAdidas({super.key});
  static String routeName = '/menuModelProductAdidas';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Menu Brand Product Adidas",
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
                chillTitle: "WHITE/BLUE [ID5003]",
                harga: "Rp. 2.250.000",
                title: "SUPERSTAR GOLF SHOES",
                image: 'assets/image/adidas/adidas1/1.webp',
                onTap: () => Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const Adidas1()),
                ),
              ),
              CustomCard(
                title: "SEPATU GALAXY 6",
                chillTitle: "WHITE/BLUE/MULTICOLOR [IE1979]",
                harga: "Rp. 850.000",
                image: 'assets/image/adidas/adidas2/1.webp',
                onTap: () => Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const Adidas2()),
                ),
              ),
              CustomCard(
                title: "SEPATU SAMBA OG",
                chillTitle: "BLACK/WHITE/BEIGE [B75807]",
                harga: "Rp. 2.200.000",
                image: 'assets/image/adidas/adidas3/1.webp',
                onTap: () => Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const Adidas3()),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
