import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:seggtech/provider/login_provider.dart';
import 'package:seggtech/routes/routes.dart';
import 'package:seggtech/routes/routes_path.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => LoginProvider()),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'SEGGTECH',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        onGenerateRoute: Routers.generateRoute,
        initialRoute: splash,
      ),
    );
  }
}
