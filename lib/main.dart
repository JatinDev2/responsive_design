import 'package:flutter/material.dart';
import 'package:responsive_design/responsiveScreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        useMaterial3: true,
      ),
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.red.shade200,
          title: const Text('Responsive Cards', style: TextStyle(fontWeight: FontWeight.bold),),
        ),
        body: const ResponsiveCards(),
      ),
    );
  }
}

