import 'package:flutter/material.dart';
import 'dummy_menu.dart';

class MenuPage extends StatelessWidget {
  const MenuPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GridView.builder(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2),
          itemCount: foodMenuList.length,
          itemBuilder: (context, index) {
            final FoodMenu menu = foodMenuList[index];
            return Card(
              child: Column(
                children: [
                Text(menu.name),
                Text(menu.category),
                Text(menu.price),
                Image.network(menu.imageAsset[2]),
                ],
              ),
            );
          }
      ),
    );
  }
}