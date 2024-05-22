import 'package:flutter/material.dart';
import 'package:primer_proyecto_flutter/pages/home_page.dart';
import 'package:primer_proyecto_flutter/pages/list_products_page.dart';
import 'package:primer_proyecto_flutter/pages/detail_page.dart';
import 'package:primer_proyecto_flutter/pages/shop_cart_page.dart';

class Routes {
  static const String home = '/';
  static const String listProducts = '/list-product';
  static const String detail = '/detail';
  static const String shopCart = '/shop-cart';

  static Map<String, WidgetBuilder> getRoutes(BuildContext context) {
    return {
      home: (context) => const HomePage(),
      listProducts: (context) => const ListProductsPage(),
      detail: (context) => const DetailPage(),
      shopCart: (context) => const ShopCartPage(),
    };
  }
}
