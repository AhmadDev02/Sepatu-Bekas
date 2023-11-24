import 'package:flutter/widgets.dart';
import 'package:flutter_project_saya/register/register_screen.dart';
import 'package:flutter_project_saya/screens/MenuModel/menu_brand.dart';
import 'package:flutter_project_saya/screens/MenuModel/menu_model_product_adidas.dart';
import 'package:flutter_project_saya/screens/MenuModel/menu_model_product_converse.dart';
import 'package:flutter_project_saya/screens/MenuModel/menu_model_product_nike.dart';
import 'package:flutter_project_saya/screens/MenuModel/menu_model_product_puma.dart';
import 'package:flutter_project_saya/screens/MenuModel/menu_model_product_reebook.dart';
import 'package:flutter_project_saya/screens/account/settings/settings.dart';
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
import 'package:flutter_project_saya/screens/home/home_screen.dart';
import 'package:flutter_project_saya/screens/login/login_screen.dart';

import 'screens/splash/splash_screen.dart';

final Map<String, WidgetBuilder> routes = {
  Onboarding.routeName: (context) => const Onboarding(),
  HomeScreen.routeName: (context) => const HomeScreen(),
  LoginScreen.routeName: (context) => const LoginScreen(),
  RegisterScreen.routeName: (context) => const RegisterScreen(),
  Adidas1.routeName: (context) => const Adidas1(),
  Adidas2.routeName: (context) => const Adidas2(),
  Adidas3.routeName: (context) => const Adidas3(),
  Converse1.routeName: (context) => const Converse1(),
  Converse2.routeName: (context) => const Converse2(),
  Converse3.routeName: (context) => const Converse3(),
  Nike1.routeName: (context) => const Nike1(),
  Nike2.routeName: (context) => const Nike2(),
  Nike3.routeName: (context) => const Nike3(),
  Puma1.routeName: (context) => const Puma1(),
  Puma2.routeName: (context) => const Puma2(),
  Puma3.routeName: (context) => const Puma3(),
  Reebok1.routeName: (context) => const Reebok1(),
  Reebok2.routeName: (context) => const Reebok2(),
  Reebok3.routeName: (context) => const Reebok3(),
  MenuModelProductPuma.routeName: (context) => const MenuModelProductPuma(),
  MenuModelProductReebok.routeName: (context) => const MenuModelProductReebok(),
  MenuModelProductAdidas.routeName: (context) => const MenuModelProductAdidas(),
  MenuModelProductNike.routeName: (context) => const MenuModelProductNike(),
  MenuModelProductConverse.routeName: (context) =>
      const MenuModelProductConverse(),
  MenuBrand.routeName: (context) => const MenuBrand(),
  Settings.routeName: (context) => const Settings(),
};
