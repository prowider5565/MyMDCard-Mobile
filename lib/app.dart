import 'package:flutter/material.dart';
import 'routes/app_router.dart';

class MyMDCardApp extends StatelessWidget {
  const MyMDCardApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'MyMDCard',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: const Color(0xFF4CAF50)),
        useMaterial3: true,
      ),
      routerConfig: appRouter,
    );
  }
}
