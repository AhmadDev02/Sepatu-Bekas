import 'package:flutter/material.dart';
import 'package:flutter_project_saya/screens/MenuModel/menu_model_product_adidas.dart';
import 'package:flutter_project_saya/screens/MenuModel/menu_model_product_converse.dart';
import 'package:flutter_project_saya/screens/MenuModel/menu_model_product_nike.dart';
import 'package:flutter_project_saya/screens/MenuModel/menu_model_product_puma.dart';
import 'package:flutter_project_saya/screens/MenuModel/menu_model_product_reebook.dart';

class CustomCard extends StatelessWidget {
  final String title;
  final String image;
  final VoidCallback onTap;

  const CustomCard({
    super.key,
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
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(
                  top: 8,
                  left: 20,
                  right: 20,
                ),
                child: Image.asset(
                  image,
                  fit: BoxFit.fill,
                  height: 100,
                  width: 100,
                ),
              ),
              Center(
                child: Text(
                  title,
                  style: const TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class MenuBrand extends StatelessWidget {
  const MenuBrand({super.key});
  static String routeName = '/menuBrand';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Menu Brand Product",
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
      body: SingleChildScrollView(
        child: Column(
          children: [
            GridView.count(
              crossAxisCount: 2,
              physics: const NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              children: [
                CustomCard(
                  title: "REEBOK",
                  image: 'assets/image/icon2.png',
                  onTap: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const MenuModelProductReebok()),
                  ),
                ),
                CustomCard(
                  title: "ADIDAS",
                  image: 'assets/image/icon3.png',
                  onTap: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const MenuModelProductAdidas()),
                  ),
                ),
                CustomCard(
                  title: "PUMA",
                  image: 'assets/image/icon1.png',
                  onTap: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const MenuModelProductPuma()),
                  ),
                ),
                CustomCard(
                  title: "NIKE",
                  image: 'assets/image/icon4.png',
                  onTap: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const MenuModelProductNike()),
                  ),
                ),
                CustomCard(
                  title: "CONVERSE",
                  image: 'assets/image/converse.png',
                  onTap: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const MenuModelProductConverse()),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
