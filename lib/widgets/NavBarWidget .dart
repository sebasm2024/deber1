import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:primer_proyecto_flutter/pages/home_page.dart';
import 'package:primer_proyecto_flutter/pages/list_products_page.dart';
import 'package:primer_proyecto_flutter/pages/detail_page.dart';
import 'package:primer_proyecto_flutter/pages/shop_cart_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final GoRouter _router = GoRouter(
      initialLocation: '/',
      routes: [
        GoRoute(
          path: '/',
          builder: (context, state) => HomePage(),
        ),
        GoRoute(
          path: '/list-product',
          builder: (context, state) => ListProductsPage(),
        ),
        GoRoute(
          path: '/detail',
          builder: (context, state) => DetailPage(),
        ),
        GoRoute(
          path: '/shop-cart',
          builder: (context, state) => ShopCartPage(),
        ),
      ],
    );

    return MaterialApp.router(
      routerDelegate: _router.routerDelegate,
      routeInformationParser: _router.routeInformationParser,
      title: 'Flutter Demo',
    );
  }
}
