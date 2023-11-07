import 'package:flutter/material.dart';
import 'home.dart';
import 'cart.dart';
import 'package:provider/provider.dart';
import 'item_data.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => ItemData(),
      child: MaterialApp(
        title: 'dukaan',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        // home: const MyHomePage(title: 'Flutter Demo Home Page'),
        initialRoute: Home.id,
        routes: {
          Home.id: (context) => Home(),
          Cart.id: (context) => Cart(),
        },
      ),
    );
  }
}
