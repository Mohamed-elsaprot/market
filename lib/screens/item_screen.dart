import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class itemScreen extends StatelessWidget {

  final p;
  itemScreen(this.p);


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF219ebc),
        title: Text('Electronics Market',),
        elevation: 0,
        actions: [
          IconButton(onPressed: (){}, icon: Icon(Icons.menu))
        ],
      ),
      body: Container(
        child: Column(
          children: [
            SizedBox(height:100),
            Stack(
              children: [
                Center(
                  child: Container(
                    height: 300,
                    width: 300,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.black.withOpacity(.5),
                    ),

                  ),
                ),
                Center(
                  child: Container(
                    margin: EdgeInsets.only(top: 75),
                    height: 150,
                    width: 150,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.white,
                    ),
                  ),
                ),
                Center(
                  child: Container(
                    height: 300,
                    width: 300,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                    ),
                    child: Image.asset(p.image),
                  ),
                ),

              ],
            ),
            Center(
              child: Column(
              children: [
                Container(child: Text(p.title,style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),), margin: EdgeInsets.only(top: 30),),
                Container(child: Text(p.description,style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),textAlign: TextAlign.center,),margin: EdgeInsets.all( 15)),
                Container(child: Text('price: ${p.price}\$',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.red),),margin: EdgeInsets.only(top: 10)),
                Container(child: Text("اشتري مننا وحياة امك",style: TextStyle(fontSize: 22,fontWeight: FontWeight.bold),),margin: EdgeInsets.only(top: 20)),
              ],
            ),
            )
          ],
        ),
      ),
    );
  }
}
