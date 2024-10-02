import 'package:flutter/material.dart';
import 'dummy_menu.dart';

class HomePage extends StatelessWidget {
  final String username;

  HomePage({required this.username});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Menu Makanan'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: ListView.builder(
          itemCount: foodMenuList.length,
          itemBuilder: (context, index) {
            return Card(
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Column(
                  children: [
                    Image.asset(foodMenuList[index].imageAsset),
                    SizedBox(height: 10),
                    Text(foodMenuList[index].name,
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.bold)),
                    Text(foodMenuList[index].description),
                    Text('Harga: ${foodMenuList[index].price}'),
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
