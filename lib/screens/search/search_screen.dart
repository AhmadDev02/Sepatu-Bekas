import 'package:flutter/material.dart';
import 'package:flutter_project_saya/screens/halaman_produk/adidas/adidas1.dart';
import 'package:flutter_project_saya/screens/halaman_produk/adidas/adidas2.dart';
import 'package:flutter_project_saya/screens/halaman_produk/adidas/adidas3.dart';
import 'package:flutter_project_saya/screens/halaman_produk/converse/converse1.dart';
import 'package:flutter_project_saya/screens/halaman_produk/converse/converse2.dart';
import 'package:flutter_project_saya/screens/halaman_produk/converse/converse3.dart';
import 'package:flutter_project_saya/screens/halaman_produk/nike/nike1.dart';
import 'package:flutter_project_saya/screens/halaman_produk/nike/nike2.dart';
import 'package:flutter_project_saya/screens/halaman_produk/nike/nike3.dart';
import 'package:flutter_project_saya/screens/halaman_produk/puma/puma1.dart';
import 'package:flutter_project_saya/screens/halaman_produk/puma/puma2.dart';
import 'package:flutter_project_saya/screens/halaman_produk/puma/puma3.dart';
import 'package:flutter_project_saya/screens/halaman_produk/reebok/reebok1.dart';
import 'package:flutter_project_saya/screens/halaman_produk/reebok/reebok2.dart';
import 'package:flutter_project_saya/screens/halaman_produk/reebok/reebok3.dart';
import 'package:flutter_project_saya/screens/search/model/model_seach.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({super.key});

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  static List<MenuModel> mainMenuList = [
    MenuModel(
      1,
      "SUPERSTAR GOLF SHOES",
      "WHITE/BLUE/WHITE [ID5003]",
      "Rp. 2.250.000",
      "assets/image/adidas/adidas1/1.webp",
    ),
    MenuModel(
      2,
      "SEPATU GALAXY 6",
      "WHITE/BLUE/MULTICOLOR [IE1979]",
      "Rp. 850.000",
      "assets/image/adidas/adidas2/1.webp",
    ),
    MenuModel(
      3,
      "SEPATU SAMBA OG",
      "BEIGE [B75807]",
      "Rp. 2.200.000",
      "assets/image/adidas/adidas3/1.webp",
    ),
    MenuModel(
      4,
      "Chuck Taylor All Star",
      "HER MOVE",
      "Rp. 999.000",
      "assets/image/converse/converse1/1.jpg",
    ),
    MenuModel(
      5,
      "Chuck 71",
      "CANVAS SEASON",
      "Rp. 999.000",
      "assets/image/converse/converse2/1.jpg",
    ),
    MenuModel(
      6,
      "Chuck 70",
      "CANVAS SEASON.",
      "Rp. 1.099.000",
      "assets/image/converse/converse3/1.jpg",
    ),
    MenuModel(
      7,
      "Nike Structure 25",
      "Women's Road Running",
      "Rp 2,099,000",
      "assets/image/nike/nike1/1.jpeg",
    ),
    MenuModel(
      8,
      "Nike Alphafly 2",
      "Men's Road Racing Shoes",
      "Rp 4,089,000",
      "assets/image/nike/nike2/1.webp",
    ),
    MenuModel(
      9,
      "Nike Juniper Trail 2",
      "Women's Trail-Running",
      "Rp 1,149,000",
      "assets/image/nike/nike3/1.webp",
    ),
    MenuModel(
      10,
      "Slipstream Xtreme Sneakers",
      "None1",
      "Rp 2.179.000",
      "assets/image/puma/puma1/1.webp",
    ),
    MenuModel(
      11,
      "Court Ultra 75",
      "None2",
      "Rp 1.199.000",
      "assets/image/puma/puma2/1.webp",
    ),
    MenuModel(
      12,
      "RBD Game Low",
      "None3",
      "Rp 1.299.000",
      "assets/image/puma/puma3/1.webp",
    ),
    MenuModel(
      13,
      "REEBOK CLASSIC LEATHER",
      "SKU 0888-REE10032760",
      "Rp. 879.200",
      "assets/image/reebok/reebok1/1.webp",
    ),
    MenuModel(
      14,
      "REEBOK ROYAL BB4590",
      "SKU 0888-REE10033912",
      "Rp. 799.200",
      "assets/image/reebok/reebok2/1.webp",
    ),
    MenuModel(
      15,
      "REEBOK BB 4000",
      "SKU 0888-REE10033432",
      "Rp. 1.599.000",
      "assets/image/reebok/reebok3/1.webp",
    ),
  ];

  List<MenuModel> tampilanList = List.from(mainMenuList);

  void updateMenu(String value) {
    setState(() {
      tampilanList = mainMenuList
          .where((item) =>
              item.tittleH1!.toLowerCase().contains(value.toLowerCase()))
          .toList();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(top: 10, right: 16, left: 16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "Search Product",
              style: TextStyle(
                color: Colors.black,
                fontSize: 22,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            TextField(
              onChanged: (value) => updateMenu(value),
              style: const TextStyle(color: Colors.black),
              decoration: InputDecoration(
                filled: true,
                fillColor: Colors.green.shade100,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12),
                  borderSide: BorderSide.none,
                ),
                hintText: "Ex: Nike",
                hintStyle: TextStyle(
                  color: Colors.green.shade500,
                ),
                prefixIcon: const Icon(Icons.search),
                prefixIconColor: Colors.green.shade500,
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Expanded(
              child: tampilanList.isEmpty
                  ? const Center(
                      child: Text(
                        "Tidak Ditemukan Product",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    )
                  : ListView.builder(
                      itemCount: tampilanList.length,
                      itemBuilder: (context, index) => Padding(
                        padding: const EdgeInsets.symmetric(
                          vertical: 8.0,
                        ),
                        child: Card(
                          elevation: 5.0,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: ListTile(
                            contentPadding: const EdgeInsets.all(8.0),
                            title: Text(
                              tampilanList[index].tittleH1!,
                              style: const TextStyle(
                                color: Colors.black,
                                fontSize: 14,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            subtitle: Text(
                              '${tampilanList[index].titleH2}',
                              style: const TextStyle(
                                color: Colors.black,
                                fontSize: 12,
                              ),
                            ),
                            trailing: Text(
                              "${tampilanList[index].harga}",
                              style: const TextStyle(
                                color: Colors.black,
                                fontSize: 12,
                              ),
                            ),
                            leading: Image.asset(tampilanList[index].imageUrl!),
                            onTap: () {
                              switch (mainMenuList[index].id) {
                                case 1:
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => const Adidas1()),
                                  );
                                  break;
                                case 2:
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => const Adidas2()),
                                  );
                                  break;
                                case 3:
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => const Adidas3()),
                                  );
                                  break;
                                case 4:
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            const Converse1()),
                                  );
                                  break;
                                case 5:
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            const Converse2()),
                                  );
                                  break;
                                case 6:
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            const Converse3()),
                                  );
                                  break;
                                case 7:
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => const Nike1()),
                                  );
                                  break;
                                case 8:
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => const Nike2()),
                                  );
                                  break;
                                case 9:
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => const Nike3()),
                                  );
                                  break;
                                case 10:
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => const Puma1()),
                                  );
                                  break;
                                case 11:
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => const Puma2()),
                                  );
                                  break;
                                case 12:
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => const Puma3()),
                                  );
                                  break;
                                case 13:
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => const Reebok1()),
                                  );
                                  break;
                                case 14:
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => const Reebok2()),
                                  );
                                  break;
                                case 15:
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => const Reebok3()),
                                  );
                                  break;
                                default:
                                  break;
                              }
                            },
                          ),
                        ),
                      ),
                    ),
            ),
            const SizedBox(
              height: 75,
            ),
          ],
        ),
      ),
    );
  }
}
