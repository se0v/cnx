import 'package:cinex/router/router.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const CineXApp());
}

class CineXApp extends StatefulWidget {
  const CineXApp({super.key});

  @override
  State<CineXApp> createState() => _CineXAppState();
}

class _CineXAppState extends State<CineXApp> {
  final _router = AppRouter();

  @override
  Widget build(BuildContext context) {
    const primaryColor = Color.fromARGB(255, 255, 87, 87);
    return MaterialApp.router(
      title: 'CineX',
      theme: ThemeData(
        primaryColor: primaryColor,
        scaffoldBackgroundColor: const Color.fromARGB(250, 212, 212, 221),
        colorScheme: ColorScheme.fromSeed(seedColor: primaryColor),
        useMaterial3: true,
      ),
      routerConfig: _router.config(),
    );
  }
}
