import 'package:badminton_yard_booking_app/src/undefined_view.dart';
import 'package:flutter/material.dart';
import 'route_generator.dart' as router;
void main() {
  runApp(const MainApp());
}

class MainApp extends StatefulWidget {
const MainApp({Key? key}) : super(key: key);

// This widget is the root of your application.
@override
MainAppState createState() => MainAppState();
}

class MainAppState extends State<MainApp>{
  Locale _locale = const Locale('en', 'US');
  setLocale(Locale locale) {
    setState(() {
      _locale = locale;
    });
  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Kiosk Order",
      theme: ThemeData(
        appBarTheme: const AppBarTheme(color: Colors.white),
      ),
      locale: _locale,
      initialRoute: "/",
      onGenerateRoute: router.generateRoute,
      onUnknownRoute: (settings) => MaterialPageRoute(
          builder: (context) => UndefinedView(
            name: settings.name,
          )
      ),
    );
  }
}
