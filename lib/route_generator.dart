import 'package:badminton_yard_booking_app/src/home_screen.dart';
import 'package:badminton_yard_booking_app/src/login_screen.dart';
import 'package:badminton_yard_booking_app/src/undefined_view.dart';
import 'package:flutter/material.dart';

Route<dynamic> generateRoute(RouteSettings settings){
  final arg = settings.arguments;
  switch(settings.name){
    case "/":
      return MaterialPageRoute(builder: (context)=>LoginScreen(context));
    case HomeScreen.routeName:
      return MaterialPageRoute(builder: (context)=>HomeScreen(context));
    default:
      return MaterialPageRoute(builder: (context) => UndefinedView(name: settings.name.toString()));
  }
}