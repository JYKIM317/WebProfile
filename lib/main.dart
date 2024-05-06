import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:webprofile/presentation/page/page_desktop_view.dart';
import 'package:webprofile/presentation/page/page_mobile_view.dart';

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
          tablet: (BuildContext context) => const DesktopPage(), //Web view
          mobile: (BuildContext context) => const MobilePage(), //Mobile view
        ),
      ),
    ),
  );
}
