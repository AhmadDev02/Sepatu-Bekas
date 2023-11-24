import 'package:flutter/material.dart';
import 'package:flutter_project_saya/screens/account/account_screen.dart';
import 'package:flutter_project_saya/screens/home/home_screen.dart';
import 'package:flutter_project_saya/screens/search/search_screen.dart';
import 'package:flutter_project_saya/screens/shopping/shopping_screen.dart';

class NavScreen extends StatefulWidget {
  const NavScreen({super.key});

  @override
  State<NavScreen> createState() => _NavScreenState();
}

class _NavScreenState extends State<NavScreen> {
  int bottom = 0;
  int index = 0;

  final List<Widget> listScreen = [
    const HomeScreen(),
    const SearchScreen(),
    const ShoppingCart(),
    const AccountScreen()
  ];

  void onTap(int index) {
    setState(() {
      bottom = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints) {
          return Scaffold(
            body: Stack(
              children: [
                listScreen.elementAt(index),
                Padding(
                  padding:
                      EdgeInsets.all(MediaQuery.of(context).size.width * 0.05),
                  child: Align(
                    alignment: const Alignment(0.0, 1.0),
                    child: Material(
                      elevation: 5.0,
                      borderRadius: const BorderRadius.all(Radius.circular(30)),
                      child: ClipRRect(
                        borderRadius: const BorderRadius.all(
                          Radius.circular(30),
                        ),
                        child: BottomNavigationBar(
                          items: const [
                            BottomNavigationBarItem(
                              icon: Icon(Icons.home_outlined),
                              label: "Home",
                            ),
                            BottomNavigationBarItem(
                              icon: Icon(Icons.search_outlined),
                              label: "Search",
                            ),
                            BottomNavigationBarItem(
                              icon: Icon(Icons.shopping_cart_outlined),
                              label: "Keranjang",
                            ),
                            BottomNavigationBarItem(
                              icon: Icon(Icons.account_circle_outlined),
                              label: "Account",
                            ),
                          ],
                          currentIndex: index,
                          selectedItemColor: Colors.green,
                          unselectedItemColor: Colors.grey,
                          showSelectedLabels: true,
                          showUnselectedLabels: false,
                          backgroundColor: Colors.white,
                          onTap: (int val) => setState(() => index = val),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
