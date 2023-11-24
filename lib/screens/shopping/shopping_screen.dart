import 'package:flutter/material.dart';
import 'package:flutter_project_saya/screens/shopping/model/menu_bayar.dart';
import 'package:flutter_project_saya/screens/shopping/model/model_shopping.dart';
import 'package:sliding_sheet_new/sliding_sheet_new.dart';

class ShoppingCart extends StatefulWidget {
  const ShoppingCart({super.key});

  @override
  State<ShoppingCart> createState() => _ShoppingCartState();
}

class _ShoppingCartState extends State<ShoppingCart> {
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
    return Scaffold(
      appBar: AppBar(
        elevation: 5.0,
        centerTitle: true,
        title: const Text(
          "Shopping",
          style: TextStyle(
            color: Colors.black,
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 10, right: 16, left: 16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Expanded(
              child: ListView.builder(
                itemCount: tampilanList.length,
                itemBuilder: (context, index) => Padding(
                  padding: const EdgeInsets.symmetric(
                    vertical: 8.0,
                  ),
                  child: Dismissible(
                    key: Key(tampilanList[index].tittleH1!),
                    direction: DismissDirection.endToStart,
                    onDismissed: (direction) {
                      setState(() {
                        tampilanList.removeAt(index);
                      });
                    },
                    background: Container(
                      color: Colors.red,
                      alignment: Alignment.centerRight,
                      padding: const EdgeInsets.only(right: 20.0),
                      child: const Icon(Icons.delete, color: Colors.white),
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
                      ),
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                top: 12,
                bottom: 12,
              ),
              child: Column(
                children: [
                  ElevatedButton.icon(
                    icon: const Icon(Icons.payment),
                    label: const Text('Bayar Sekarang'),
                    onPressed: () {
                      showSlidingBottomSheet(context, builder: (context) {
                        return SlidingSheetDialog(
                          cornerRadius: 16,
                          snapSpec: const SnapSpec(
                            snap: true,
                            snappings: [0.4, 0.7, 1.0],
                            positioning:
                                SnapPositioning.relativeToAvailableSpace,
                          ),
                          builder: (context, state) {
                            return const MenuBayar();
                          },
                        );
                      });
                    },
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                ],
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


// Column(children: [
//           Container(
//             height: 110,
//             margin: const EdgeInsets.symmetric(
//               horizontal: 15,
//               vertical: 15,
//             ),
//             padding: const EdgeInsets.all(10),
//             decoration: BoxDecoration(
//               color: Colors.white,
//               borderRadius: BorderRadius.circular(10),
//               boxShadow: [
//                 BoxShadow(
//                   color: Colors.grey.withOpacity(0.5),
//                   spreadRadius: 2,
//                   blurRadius: 5,
//                   offset: const Offset(0, 2),
//                 ),
//               ],
//             ),
//             child: Row(
//               children: [
//                 Container(
//                   height: 70,
//                   width: 70,
//                   margin: const EdgeInsets.only(right: 15),
//                   child: Image.asset("assets/image/adidas/adidas1/1.webp"),
//                 ),
//                 const Padding(
//                   padding: EdgeInsets.only(
//                     right: 15,
//                   ),
//                   child: Column(
//                     crossAxisAlignment: CrossAxisAlignment.start,
//                     mainAxisAlignment: MainAxisAlignment.spaceAround,
//                     children: [
//                       Text(
//                         "Supertar Golf Shoes",
//                         style: TextStyle(
//                           color: Colors.black,
//                           fontWeight: FontWeight.bold,
//                           fontSize: 16,
//                         ),
//                       ),
//                       Text(
//                         "Rp. 2.250.000",
//                         style: TextStyle(
//                           color: Colors.black,
//                           fontSize: 14,
//                         ),
//                       ),
//                     ],
//                   ),
//                 ),
//                 const Spacer(),
//                 Padding(
//                   padding: const EdgeInsets.symmetric(
//                     vertical: 5,
//                   ),
//                   child: Column(
//                     crossAxisAlignment: CrossAxisAlignment.end,
//                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                     children: [
//                       const Icon(
//                         Icons.delete,
//                         color: Colors.red,
//                       ),
//                       Row(
//                         children: [
//                           Container(
//                               height: 20,
//                               width: 30,
//                               padding: const EdgeInsets.all(4),
//                               decoration: BoxDecoration(
//                                   color: Colors.white,
//                                   borderRadius: BorderRadius.circular(12),
//                                   boxShadow: [
//                                     BoxShadow(
//                                       color: Colors.grey.withOpacity(0.5),
//                                       spreadRadius: 1,
//                                       blurRadius: 5,
//                                     ),
//                                   ]),
//                               child: IconButton(
//                                 onPressed: () {},
//                                 icon: const Icon(
//                                   CupertinoIcons.minus,
//                                   size: 18,
//                                 ),
//                                 iconSize: 18,
//                               )),
//                         ],
//                       ),
//                     ],
//                   ),
//                 ),
//               ],
//             ),
//           )
//         ],
//       ),
