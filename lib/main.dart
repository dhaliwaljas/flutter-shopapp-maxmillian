import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shopapp/Provider/cart.dart';
import 'package:shopapp/Provider/products.dart';
import 'package:shopapp/screens/cart_screen.dart';
import 'package:shopapp/screens/product_detail_screen.dart';
import 'package:shopapp/screens/products_overview_screen.dart';

void main() => runApp(ShopApp());

class ShopApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider.value(
          value: Products(),
        ),
        ChangeNotifierProvider.value(
          value: Cart(),
        ),
      ],
      child: MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'ShopApp',
          theme: ThemeData(
            primarySwatch: Colors.indigo,
            accentColor: Colors.tealAccent,
            fontFamily: 'Lato',
          ),
          home: ProductsOverviewScreen(),
          routes: {
            ProductDetailScreen.routeName: (ctx) => ProductDetailScreen(),
            CartScreen.routName: (ctx) => CartScreen(),
          }),
    );
  }
}
