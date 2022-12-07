import 'package:flutter/material.dart';
import 'package:final_project/properties_app/prop.dart';
import 'package:convex_bottom_bar/convex_bottom_bar.dart';
import 'package:final_project/view/home.dart';
import 'package:final_project/view/profile_page/profile.dart';
import 'package:final_project/view/transaction.dart';
import 'package:final_project/view/wishlist.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int index = 0;

  List<Widget> body = [
    const HomePage(),
    const WishlistPage(),
    const TransactionPage(),
    const ProfilePage()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildCustomAppbar(context),
      body: body[index],
      bottomNavigationBar: ConvexAppBar(
        activeColor: Colors.black,
        backgroundColor: Colors.white,
        color: Colors.black,
        items: const [
          TabItem(icon: Icons.home, title: 'Home'),
          TabItem(icon: Icons.favorite, title: 'Wishlist'),
          TabItem(icon: Icons.receipt_long, title: 'Transaction'),
          TabItem(icon: Icons.person, title: 'Profile'),
        ],
        onTap: (int i) {
          setState(() {
            index = i;
          });
        },
      ),
    );
  }
}

AppBar buildCustomAppbar(BuildContext context) {
  return AppBar(
    backgroundColor: Colors.black,
    automaticallyImplyLeading: false,
    title: TextField(
      decoration: InputDecoration(
        filled: true,
        fillColor: Colors.white,
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: const BorderSide(color: black),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: const BorderSide(color: black),
          borderRadius: BorderRadius.circular(10),
        ),
        contentPadding: const EdgeInsets.symmetric(horizontal: 16),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
        ),
        labelText: 'Find Something?',
        labelStyle: Theme.of(context).textTheme.headlineMedium,
        // labelStyle: const TextStyle(color: Colors.black),
        suffixIcon: const Icon(
          Icons.search,
          color: Colors.black,
        ),
      ),
      keyboardType: TextInputType.text,
      textInputAction: TextInputAction.search,
    ),
    centerTitle: true,
    actions: [
      IconButton(
        onPressed: () {},
        icon: const Icon(
          Icons.category_outlined,
          color: Colors.white,
        ),
      ),
      IconButton(
        onPressed: () {},
        icon: const Icon(
          Icons.shopping_cart_outlined,
          color: Colors.white,
        ),
      ),
    ],
  );
}
