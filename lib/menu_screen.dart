import 'package:flutter/material.dart';
import 'package:flutter_animation_drawer_demo/custom_menu.dart';

class MenuScreen extends StatefulWidget {
  const MenuScreen({Key? key}) : super(key: key);

  @override
  State<MenuScreen> createState() => _MenuScreenState();
}

class _MenuScreenState extends State<MenuScreen> {

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CircleAvatar(
            radius: 46,
            backgroundColor: Colors.black,
            child: CircleAvatar(
              radius: 42,
              backgroundColor: Colors.white,
              child: CircleAvatar(
                radius: 40,
                backgroundImage: NetworkImage(
                    "https://images.unsplash.com/photo-1529626455594-4ff0802cfb7e?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8NXx8bW9kZWx8ZW58MHx8MHx8&auto=format&fit=crop&w=400&q=60"),
              ),
            ),
          ),
          SizedBox(height: 10),
          Text(
            "Iron man",
            style: TextStyle(
                fontWeight: FontWeight.w600,
                color: Colors.black,
                fontSize: 24,
                letterSpacing: 1),
          ),
          SizedBox(height: 2),
          Text(
            "Iron_man_005",
            style: TextStyle(fontWeight: FontWeight.w300, color: Colors.black),
          ),
          SizedBox(height: 30),
          CustomMenu(title: "Home", icon: Icons.home, onTap: () {}),
          Divider(indent: 10,color: Colors.black),
          CustomMenu(title: "Profile", icon: Icons.person, onTap: () {}),
          Divider(indent: 10,color: Colors.black),
          CustomMenu(title: "Cart", icon: Icons.shopping_cart, onTap: () {}),
          Divider(indent: 10,color: Colors.black),
          CustomMenu(
              title: "Payment", icon: Icons.payments_outlined, onTap: () {}),
          Divider(indent: 10,color: Colors.black),
          CustomMenu(
              title: "Notification", icon: Icons.notifications, onTap: () {}),
          Divider(indent: 10,color: Colors.black),
          CustomMenu(title: "Setting", icon: Icons.settings, onTap: () {}),
          Divider(indent: 10,color: Colors.black),
          CustomMenu(title: "Help", icon: Icons.help, onTap: () {}),
          Divider(indent: 10,color: Colors.black),
          SizedBox(height: 6),
          Text(
            "App Version",
            style: TextStyle(
                fontWeight: FontWeight.w600, color: Colors.black, fontSize: 20),
          ),
          SizedBox(height: 6),
          Text(
            "2.0.1",
            style: TextStyle(fontWeight: FontWeight.w500, color: Colors.black),
          ),Spacer(),
          Text(
            "Your app is Updated",
            style: TextStyle(fontWeight: FontWeight.w300, color: Colors.black),
          ),
          SizedBox(height: 6),

        ],
      ),
    );
  }
}
