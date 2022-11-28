import 'package:disenos/pages/basico_page.dart';
import 'package:disenos/pages/botones_page.dart';
import 'package:disenos/pages/scroll_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
        SystemUiOverlayStyle.light.copyWith(statusBarColor: Colors.white));

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      initialRoute: 'botones',
      routes: {
        'basico': ((context) => const BasicoPage()),
        'scroll': ((context) => const ScrollPage()),
        'botones': ((context) => const BotonesPage()),
      },
    );
  }
}
