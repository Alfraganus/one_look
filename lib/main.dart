import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:get/get_navigation/src/routes/get_route.dart';
import 'package:one_look/pages/home/add_sumpplement/supplement_main.dart';
import 'package:one_look/pages/home/main.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
      return  GetMaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          // colorScheme:    ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        initialRoute:  '/onboarding',
        // initialRoute: '/onboarding',
        getPages: [
          GetPage(name: '/home', page: () => HomeMain()),
          GetPage(name: '/', page: () => SupplementMain()),
          // GetPage(name: '/add_supplement', page: () => SupplementMain()),
        ],
      );
  }
}

