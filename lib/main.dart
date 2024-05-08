import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';
import 'package:webprofile/presentation/page/page_view.dart' as home;

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
        home: const home.PageView(),
      ),
    ),
  );
}
