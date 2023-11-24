import 'package:flutter/material.dart';
import 'package:flutter_project_saya/screens/shopping/model/model_shopping.dart';

class MenuBayar extends StatefulWidget {
  const MenuBayar({super.key});

  @override
  State<MenuBayar> createState() => _MenuBayarState();
}

class _MenuBayarState extends State<MenuBayar> {
  static List<MenuModelShopping> mainMenuShoppingList = [
    MenuModelShopping(
      1,
      "SUPERSTAR GOLF SHOES",
      "x 1",
      "Rp. 2.250.000",
      "assets/image/adidas/adidas1/1.webp",
    ),
    MenuModelShopping(
      2,
      "Chuck Taylor All Star",
      "x 1",
      "Rp. 999.000",
      "assets/image/converse/converse1/1.jpg",
    ),
    MenuModelShopping(
      3,
      "Nike Structure 25",
      "x 1",
      "Rp 2,099,000",
      "assets/image/nike/nike1/1.jpeg",
    ),
    MenuModelShopping(
      4,
      "Slipstream Xtreme Sneakers",
      "x 1",
      "Rp 2.179.000",
      "assets/image/puma/puma1/1.webp",
    ),
    MenuModelShopping(
      5,
      "REEBOK CLASSIC LEATHER",
      "x 1",
      "Rp. 879.200",
      "assets/image/reebok/reebok1/1.webp",
    ),
  ];

  List<MenuModelShopping> tampilanList = List.from(mainMenuShoppingList);
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 500,
      padding: const EdgeInsets.only(top: 20),
      child: Column(
        children: [
          const Text(
            " Rincian Belanjaan",
            style: TextStyle(
              fontFamily: 'Muli',
              color: Colors.black,
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  margin:
                      const EdgeInsets.symmetric(horizontal: 10, vertical: 15),
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  height: 250,
                  child: Column(
                    children: [
                      Expanded(
                        child: ListView.builder(
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
                                leading:
                                    Image.asset(tampilanList[index].imageUrl!),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 12, right: 12, left: 12),
            child: Column(
              children: [
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Total Keseluruhan",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'Muli',
                      ),
                    ),
                    Text(
                      "Rp. 3.000.000",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 14,
                        fontFamily: 'Muli',
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 12,
                ),
                ElevatedButton(
                  onPressed: () {
                    // Tambahkan fungsi Anda di sini
                    //masih tahap pengembangan
                  },
                  style: ButtonStyle(
                    backgroundColor:
                        MaterialStateProperty.all<Color>(Colors.white),
                    shadowColor: MaterialStateProperty.all<Color>(Colors.black),
                    elevation: MaterialStateProperty.all<double>(5),
                  ),
                  child: const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Icon(Icons.payment, color: Colors.green),
                      Text(
                        'BAYAR',
                        style: TextStyle(
                          color: Colors.green,
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                        ),
                      ),
                      Opacity(opacity: 0, child: Icon(Icons.payment)),
                    ],
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
