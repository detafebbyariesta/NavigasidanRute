import 'package:belanja/pages/item_page.dart';
import 'package:flutter/material.dart';
import '../models/item.dart';
import 'package:flutter/cupertino.dart';

class HomePage extends StatelessWidget {
  final List<Item> items = [
    Item(name: 'Sugar', merk: 'Caster', price: 5000),
    Item(name: 'Salt', merk: 'Himalaya', price: 2000),
    Item(name: 'Oil', merk: 'Bimoli', price: 10000),
    Item(name: 'Rice', merk: 'Ramos', price: 15000)
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Shopping List"),
        centerTitle: true,
      ),
      body: Container(
        margin: EdgeInsets.all(8),
        child: ListView.builder(
          padding: EdgeInsets.all(8),
          itemCount: items.length,
          itemBuilder: (context, index) {
            final item = items[index];
            return InkWell(
              onTap: (){
                // Navigator.pushNamed(context, '/item');
                Navigator.push(
                  context, 
                  MaterialPageRoute(
                    builder: (context) => ItemPage(tempItem: item)),
                    );
              },
                child: Card(
                  child: Row(
                    children: [
                      Expanded(child: Text(item.name)),
                      Expanded(child: Text(item.merk)),
                      Expanded(
                        child: Text(
                          item.price.toString(),
                          textAlign: TextAlign.end,
                        ),
                      )
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
