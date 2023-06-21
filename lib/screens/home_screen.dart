import 'package:flutter/material.dart';
import 'package:market/widget/home_body.dart';

class HomeScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF219ebc),
      appBar: buildAppBar(),
      body: HomeBody(),
    );
  }

  AppBar buildAppBar(){
    return AppBar(
      backgroundColor: Color(0xFF219ebc),
      title: Text('Welcome to Electronics Market'),
      elevation: 30,
      actions: [
        IconButton(onPressed: (){}, icon: Icon(Icons.menu))
      ],
    );
  }
}
