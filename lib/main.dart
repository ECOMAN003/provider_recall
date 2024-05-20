import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_recall/pages/cart_page.dart';
import 'package:provider_recall/pages/products_page.dart';
import 'package:provider_recall/providers/cart_provider.dart';

void main() {
  runApp(ChangeNotifierProvider(
    create: (context) => CartProvider(),
    child: const MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      //home: const MyHomePage(title: 'Flutter Demo Home Page'),
      initialRoute: "/products",
      routes: {
        "/cart": (context) => const CartPage(),
        "/products": (context) => const ProductsPage(),
      },
    );
  }
}
