import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_project_saya/screens/shopping/shopping_screen.dart';
import 'package:intl/intl.dart';
import 'package:provider/provider.dart';

class Converse3 extends StatelessWidget {
  const Converse3({super.key});
  static String routeName = '/converse3';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: EditAppBar(),
      body: const SingleChildScrollView(
        child: Column(
          children: [
            ImageDetailProduct(),
            DeskripsiSingkat(),
            DetailProduct(),
            TombolCheckout()
          ],
        ),
      ),
    );
  }
}

//model untuk penjumlahan count dan harga pada setiap product
class CounterModel7 extends ChangeNotifier {
  int counter = 0;
  int price = 0;

  String get formattedPrice {
    final formatCurrency = NumberFormat.simpleCurrency(locale: 'id_ID');
    return formatCurrency.format(price);
  }

  void incrementCounter() {
    price = 1099000 *
        (counter + 1); // Mengatur ulang harga sebelum menambah counter
    counter++;
    notifyListeners();
  }

  void decrementCounter() {
    if (counter > 0) {
      price = 1099000 *
          (counter - 1); // Mengatur ulang harga sebelum mengurangi counter
      counter--;
      notifyListeners();
    }
  }
}

class TombolCheckout extends StatelessWidget {
  const TombolCheckout({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    var counterModel7 = Provider.of<CounterModel7>(context);
    return Padding(
      padding: const EdgeInsets.only(
        top: 12,
        bottom: 12,
      ),
      child: Column(
        children: [
          ElevatedButton.icon(
            icon: const Icon(Icons.shopping_cart),
            label: Text(
                'Checkout: ${counterModel7.counter} - ${counterModel7.formattedPrice}'),
            onPressed: () {
              // Navigasi ke halaman checkout
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const ShoppingCart()),
              );
            },
          ),
          const SizedBox(
            height: 10,
          ),
        ],
      ),
    );
  }
}

class DetailProduct extends StatelessWidget {
  const DetailProduct({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        border: Border(
          top: BorderSide(width: 6, color: Color.fromARGB(255, 223, 222, 222)),
          bottom:
              BorderSide(width: 6, color: Color.fromARGB(255, 223, 222, 222)),
        ),
      ),
      padding: const EdgeInsets.only(
        top: 10,
        bottom: 10,
        right: 10,
        left: 10,
      ),
      child: const Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            "Detail Product",
            textAlign: TextAlign.left,
            style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.bold,
              fontSize: 18,
            ),
          ),
          SizedBox(
            height: 16,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                "Di tahun 1970, Chuck Taylor All Star berubah menjadi salah satu sneakers basket terbaik yang pernah ada. Chuck 70 merayakan warisan tersebut dengan menyatukan detail yang berasal dari arsip-arsip dengan pembaharuan modern. Bantalan insole Ortholite dan jahitan lidah bersayap menjadikan kenyamanan jauh lebih baik lagi. Midsole egret glossy dan patch bintang pergelangan kaki yang khas menguarkan gaya vintage dan ikonik dari sepatu ini. Terbaharui dalam warna-warna arsip pada kanvas premium.",
                textAlign: TextAlign.justify,
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 14,
                ),
              ),
              SizedBox(height: 10),
              Text(
                "Fitur dan Keuntungan :",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 14,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 10),
              Row(
                children: <Widget>[
                  Text(
                    '• ',
                    style: TextStyle(
                      color: Colors.black,
                    ),
                  ),
                  Expanded(
                      child: Text(
                    'Sepatu high-stop dengan upper kanvas premium dalam warna musiman',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 14,
                    ),
                  )),
                ],
              ),
              Row(
                children: <Widget>[
                  Text(
                    '• ',
                    style: TextStyle(
                      color: Colors.black,
                    ),
                  ),
                  Expanded(
                    child: Text(
                      'Jahitan tongue bersayap untuk dukungan tambahan',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 14,
                      ),
                    ),
                  ),
                ],
              ),
              Row(
                children: <Widget>[
                  Text(
                    '• ',
                    style: TextStyle(
                      color: Colors.black,
                    ),
                  ),
                  Expanded(
                      child: Text(
                    'Patch bintang pergelangan kaki dan plat lisensi',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 14,
                    ),
                  )),
                ],
              ),
              Row(
                children: <Widget>[
                  Text(
                    '• ',
                    style: TextStyle(
                      color: Colors.black,
                    ),
                  ),
                  Expanded(
                      child: Text(
                    'Terinspirasi dari arsip, midsole egret glossy',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 14,
                    ),
                  )),
                ],
              ),
              Row(
                children: <Widget>[
                  Text(
                    '• ',
                    style: TextStyle(
                      color: Colors.black,
                    ),
                  ),
                  Expanded(
                      child: Text(
                    'Bantalan insole Ortholite',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 14,
                    ),
                  )),
                ],
              ),
              SizedBox(height: 10),
              Text(
                "Mengenai Ukuran: Selisih 1-2 cm mungkin terjadi dikarenakan proses pengembangan dan produksi.",
                textAlign: TextAlign.justify,
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 14,
                ),
              ),
              SizedBox(height: 10),
              Text(
                "Mengenai Warna: Warna sesungguhnya mungkin dapat berbeda. Hal ini dikarenakan setiap layar memiliki kemampuan yang berbeda-beda untuk menampilkan warna, kami tidak dapat menjamin bahwa warna yang Anda lihat adalah warna akurat dari produk tersebut.",
                textAlign: TextAlign.justify,
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 14,
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}

//body ya
class ImageDetailProduct extends StatelessWidget {
  const ImageDetailProduct({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final List<String> images = [
      "assets/image/converse/converse3/1.jpg",
      "assets/image/converse/converse3/2.jpg",
      "assets/image/converse/converse3/3.jpg",
      "assets/image/converse/converse3/4.jpg",
      "assets/image/converse/converse3/5.jpg",
    ];

    final double width = MediaQuery.of(context).size.width;

    List<Widget> generateImagesTiles() {
      return images
          .map((e) => ClipRRect(
                borderRadius: const BorderRadius.only(
                  bottomLeft: Radius.circular(12),
                  bottomRight: Radius.circular(12),
                ),
                child: Image.asset(
                  e,
                  fit: BoxFit.cover,
                  width: width,
                ),
              ))
          .toList();
    }

    return Container(
      decoration: const BoxDecoration(
          color: Color.fromARGB(255, 226, 226, 226),
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(12),
            bottomRight: Radius.circular(12),
          ),
          boxShadow: [
            BoxShadow(
              color: Colors.grey,
              spreadRadius: 0,
              blurRadius: 5,
              offset: Offset(0, 4),
            ),
          ]),
      child: Stack(
        children: [
          CarouselSlider(
            items: generateImagesTiles(),
            options: CarouselOptions(
              height: 270,
              viewportFraction: 1.0,
              enlargeCenterPage: false,
            ),
          ),
        ],
      ),
    );
  }
}

class DeskripsiSingkat extends StatelessWidget {
  const DeskripsiSingkat({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    var counterModel7 = Provider.of<CounterModel7>(context);
    return Container(
      padding: const EdgeInsets.all(10),
      child: Column(
        children: [
          const Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Chuck 70",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                "Rp. 1.099.000",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(
                "CANVAS SEASON",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 14,
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    height: 25,
                    width: 25,
                    margin: const EdgeInsets.all(8),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(6),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.5),
                          spreadRadius: 1,
                          blurRadius: 5,
                          offset: const Offset(0, 3),
                        ),
                      ],
                    ),
                    child: IconButton(
                      icon: const Icon(
                        Icons.remove,
                        size: 10,
                      ),
                      onPressed: counterModel7.decrementCounter,
                    ),
                  ),
                  Text(
                    "${counterModel7.counter}",
                    style: const TextStyle(
                      color: Colors.black,
                      fontSize: 18,
                    ),
                  ),
                  Container(
                    height: 25,
                    width: 25,
                    margin: const EdgeInsets.all(8),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(6),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.5),
                          spreadRadius: 1,
                          blurRadius: 5,
                          offset: const Offset(0, 3),
                        ),
                      ],
                    ),
                    child: IconButton(
                      icon: const Icon(
                        Icons.add,
                        size: 10,
                      ),
                      onPressed: counterModel7.incrementCounter,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}

//dibawah adalah kode untuk appbar
class EditAppBar extends PreferredSize {
  EditAppBar({Key? key, Widget? child, Size? preferredSize})
      : super(
            key: key,
            child: child ?? Container(),
            preferredSize: preferredSize ??
                Size.fromHeight(AppBar().preferredSize.height));

  @override
  Size get preferredSize => Size.fromHeight(AppBar().preferredSize.height);

  @override
  Widget build(BuildContext context) {
    final ValueNotifier<bool> isLiked = ValueNotifier<bool>(false);

    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 5,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            AppBarCostum(
              iconData: Icons.arrow_back_ios_new,
              press: () => Navigator.pop(context),
            ),
            Container(
              padding: const EdgeInsets.symmetric(vertical: 5),
              decoration: const BoxDecoration(
                color: Colors.white,
              ),
              child: Row(
                children: [
                  ValueListenableBuilder<bool>(
                    valueListenable: isLiked,
                    builder: (context, value, child) {
                      return IconButton(
                        onPressed: () => isLiked.value = !isLiked.value,
                        icon: Icon(
                          isLiked.value
                              ? Icons.favorite
                              : Icons.favorite_border,
                          color: isLiked.value ? Colors.red : null,
                        ),
                      );
                    },
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class AppBarCostum extends StatelessWidget {
  const AppBarCostum({
    super.key,
    required this.iconData,
    required this.press,
  });

  final IconData iconData;
  final GestureTapCallback press;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: TextButton(
        onPressed: press,
        child: Icon(iconData),
      ),
    );
  }
}
