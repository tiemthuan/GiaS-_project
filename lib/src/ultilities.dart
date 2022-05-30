import 'package:carousel_pro/carousel_pro.dart';
import 'package:custom_navigation_bar/custom_navigation_bar.dart';
import 'package:flutter/material.dart';

Widget buildBottomNavigationBar(int _currentIndex,BuildContext context) {
  return CustomNavigationBar(
    iconSize: 30.0,
    selectedColor: const Color.fromRGBO(20, 160, 240, 1.0),
    strokeColor: const Color(0x30040307),
    unSelectedColor: const Color(0xffacacac),

    backgroundColor: Colors.white,
    items: [
      CustomNavigationBarItem(
        icon: const Icon(Icons.home),
        title: const Text("Home"),
      ),
      CustomNavigationBarItem(
        icon: const Icon(Icons.search),
        title: const Text("Search"),
      ),
      CustomNavigationBarItem(
        icon: const Icon(Icons.library_books_rounded),
        title: const Text("My Booking"),
      ),
      CustomNavigationBarItem(
        icon: const Icon(Icons.account_circle),
        title: const Text("Me"),
      ),
    ],
    currentIndex: _currentIndex,
    onTap: (index) {

    },
  );
}