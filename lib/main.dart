import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';
import 'package:responsive_builder/responsive_builder.dart';

void main() async {
  const String font = "Pretendard";
  await Firebase.initializeApp(options: DefaultFirebaseOptions.web);

  runApp(
    ProviderScope(
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primarySwatch: Colors.blue,
          fontFamily: font,
        ),
        home: ScreenTypeLayout.builder(
          tablet: (BuildContext context) => MyApp(), //Web view
          mobile: (BuildContext context) => MyApp(), //Mobile view
        ),
      ),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text('ddd'),
      ),
    );
  }
}
