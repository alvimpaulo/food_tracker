import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:grupo_3_app/modules/add_product/add_product_page.dart';
import 'package:grupo_3_app/modules/home/home_page.dart';

import 'firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Food Tracker',
      theme: ThemeData(
        primarySwatch: Colors.amber,
      ),
      initialRoute: "/",
      onGenerateRoute:(settings) {
        Widget? page;

        if (settings.name == "/" || settings.name == ProductsPage.route) {
          page = const ProductsPage(
          );
        }

        if ( settings.name == AddProductPage.route) {
          page = const AddProductPage(
          );
        }

        if (page != null) {
          return MaterialPageRoute<dynamic>(
            builder: (context) {
              return page!;
            },
            settings: settings,
          );
        }

        assert(false, 'Need to implement ${settings.name}');
        return null;
      },
    );
  }
}
