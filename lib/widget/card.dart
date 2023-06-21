import 'package:flutter/material.dart';

import '../models/products.dart';
import '../screens/item_screen.dart';

class productCard extends StatelessWidget {
  final Product p;

  productCard(
    @required this.p
);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return InkWell(
      onTap: (){
        print(size);
        Navigator.of(context).push(MaterialPageRoute(builder: (_){return itemScreen(p);}));
      },
      child: Container(
        height: 200,
        color: Colors.blue,
        margin: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        child: Stack(
          alignment: Alignment.bottomCenter,
          children: [
            Container(
              height: 170,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                        offset: Offset(0, 25),
                        blurRadius: 40,
                        color: Colors.black26)
                  ]
              ),
            ),
            Positioned(
              top: 0,
              right: 0,
              child: Container(
                height: 185,
                width: 200,
                color: Colors.redAccent,
                padding: EdgeInsets.symmetric(horizontal: 20),
                 // color: Colors.lightBlue,
                child: Image.asset(
                  p.image,
                  fit: BoxFit.fill,
                ),
              ),
            ),
            Positioned(
              left: 0,
                child: SizedBox(
                  height: 170,
                  width: size.width - 210,
                  child: Column(
                    children: [
                      Padding(
                        padding: EdgeInsets.all(5.0),
                        child: Text(
                          p.title,
                          style: TextStyle(
                              color: Colors.black87,
                              fontSize: 18,
                              fontWeight: FontWeight.w500),
                        ),
                      ),
                      Spacer(),
                      Padding(
                        padding: EdgeInsets.only(left: 20),
                        child: Text(
                          p.description,
                          style: TextStyle(
                              color: Colors.black87,
                              fontSize: 12,
                              fontWeight: FontWeight.w500),
                          // overflow: TextOverflow.ellipsis,
                        ),
                      ),
                      Spacer(),
                      Container(
                        margin: EdgeInsets.symmetric(vertical: 15),
                        padding: EdgeInsets.symmetric(vertical: 4, horizontal: 8),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Color(0xFF219ebc),
                        ),
                        child: Text(
                          'Price: ${p.price}\$',
                          style: TextStyle(fontSize: 18, color: Colors.white),
                        ),
                      )
                    ],
                  ),
                )),
          ],
        ),
      ),

    );
  }
}
