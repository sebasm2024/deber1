import 'package:flutter/material.dart';
import 'package:primer_proyecto_flutter/routes/route.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      initialRoute: Routes.home,
      routes: Routes.getRoutes(context),
    );
  }
}
