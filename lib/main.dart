import 'package:bikestoret/routes/app_routes.dart';
import 'package:bikestoret/theme/theme_helper.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';

import 'providers/products_provider.dart';


Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
  ]);
  ThemeHelper().changeTheme('primary');

  await Firebase.initializeApp();

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {

    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => ProductsProvider()..getProducts()),
      ],
      child: MaterialApp(
        theme: ThemeData(
          visualDensity: VisualDensity.standard,
        ),
        title: 'bikestoret',
        debugShowCheckedModeBanner: false,
        initialRoute: AppRoutes.dashboardScreen,
        routes: AppRoutes.routes,
      ),
    );
  }

}
