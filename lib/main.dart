import 'package:flutter/material.dart';
import 'screens/screens.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  static const String title = 'Fitness App - GYMO';

  const MyApp({super.key});

  @override
  Widget build(BuildContext context) => MaterialApp(
        debugShowCheckedModeBanner: false,
        title: title,
        theme: ThemeData(
          primaryColor: Colors.indigo,
        ),
        routes: <String, WidgetBuilder>{
          '/': (BuildContext context) => HomeScreen(),
          'rutinas': (BuildContext context) => const RutinasScreen(),
          'detalle': (BuildContext context) => const DetalleScreen(),
        },
      );
}
