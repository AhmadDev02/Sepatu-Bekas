import 'package:flutter/material.dart';
import 'package:flutter_project_saya/screens/halaman_produk/nike/nike1.dart';
import 'package:flutter_project_saya/screens/halaman_produk/nike/nike2.dart';
import 'package:flutter_project_saya/screens/halaman_produk/nike/nike3.dart';

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

class MenuModelProductNike extends StatelessWidget {
  const MenuModelProductNike({super.key});
  static String routeName = '/menuModelProductNike';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Menu Brand Product Nike",
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
                chillTitle: "Women's Road Running",
                harga: "Rp 2,099,000",
                title: "Nike Structure 25",
                image: 'assets/image/nike/nike1/1.jpeg',
                onTap: () => Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const Nike1()),
                ),
              ),
              CustomCard(
                title: "Nike Alphafly 2",
                chillTitle: "Men's Road Racing Shoes",
                harga: "Rp 4,089,000",
                image: 'assets/image/nike/nike2/1.webp',
                onTap: () => Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const Nike2()),
                ),
              ),
              CustomCard(
                title: "Nike Juniper Trail 2",
                chillTitle: "Women's Trail-Running",
                harga: "Rp 1,149,000",
                image: 'assets/image/nike/nike3/1.webp',
                onTap: () => Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const Nike3()),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
