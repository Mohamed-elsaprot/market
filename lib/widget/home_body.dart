import 'package:flutter/material.dart';
import 'package:market/models/products.dart';
import 'card.dart';

class HomeBody extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(
        child: Column(
          children: [
            Expanded(
              child: Stack(
                children: [
                  Container(
                    margin: EdgeInsets.only(top: 70),
                    decoration: BoxDecoration(
                        color: Color(0xFFF1EFF1),
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(50),
                            topRight: Radius.circular(50))),
                  ),
                  ListView.builder(
                      itemCount: products.length,
                      itemBuilder: (contex, index){
                        return productCard(products[index]);
                  })
                ],
              ),
            )
          ],
        ),
      );
  }
}


