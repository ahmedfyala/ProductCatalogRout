import 'package:flutter/material.dart';
import 'package:task1_rout/fetures/products/ui/view/products_widget.dart';

import 'fetures/products/ui/product_list_view.dart';

void main() {
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,

    );
  }
}

