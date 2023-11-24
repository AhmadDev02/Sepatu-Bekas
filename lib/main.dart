import 'package:flutter/material.dart';
import 'package:flutter_project_saya/routes.dart';
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
import 'package:flutter_project_saya/screens/splash/splash_screen.dart';
import 'package:flutter_project_saya/theme.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => CounterModel()),
        ChangeNotifierProvider(create: (context) => CounterModel1()),
        ChangeNotifierProvider(create: (context) => CounterModel2()),
        ChangeNotifierProvider(create: (context) => CounterModel3()),
        ChangeNotifierProvider(create: (context) => CounterModel4()),
        ChangeNotifierProvider(create: (context) => CounterModel5()),
        ChangeNotifierProvider(create: (context) => CounterModel6()),
        ChangeNotifierProvider(create: (context) => CounterModel7()),
        ChangeNotifierProvider(create: (context) => CounterModel8()),
        ChangeNotifierProvider(create: (context) => CounterModel9()),
        ChangeNotifierProvider(create: (context) => CounterModel10()),
        ChangeNotifierProvider(create: (context) => CounterModel11()),
        ChangeNotifierProvider(create: (context) => CounterModel12()),
        ChangeNotifierProvider(create: (context) => CounterModel13()),
        ChangeNotifierProvider(create: (context) => CounterModel14()),
      ],
      child: MaterialApp(
        title: 'Project Ahmad Dicoding',
        debugShowCheckedModeBanner: false,
        theme: theme(),
        initialRoute: Onboarding.routeName,
        routes: routes,
      ),
    );
  }
}
