import 'package:checkout_screen_ui/pages/payment_page/payment_page.dart';
import 'package:checkout_screen_ui/pages/rewiew_page/rewiew_page.dart';
import 'package:checkout_screen_ui/shipping_page.dart';
import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: true,
      ),
      home: const ShippingPage(),
    );
  }
}
