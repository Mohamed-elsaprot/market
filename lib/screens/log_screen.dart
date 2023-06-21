import 'package:flutter/material.dart';
import 'package:market/screens/home_screen.dart';
import 'package:market/widget/home_body.dart';
import 'home_screen.dart';

class LogIn extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        'homescreen' :(context)=> HomeScreen(),

      },
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Color(0xFF219ebc),
          title: Text('Welcome to Electronics Market'),
          elevation: 0,
          actions: [
            IconButton(onPressed: (){}, icon: Icon(Icons.menu))
          ],
        ),
        body: Container(
          height: double.infinity,
          child: SingleChildScrollView(
            child:
            Column(
              children: [
                Container(
                  margin: EdgeInsets.all(15),
                  child: TextField(
                    decoration: InputDecoration(
                      //fillColor: Colors.white,
                      //filled: true,

                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30),
                        borderSide: BorderSide(color:Color(0xFF219ebc) ,width:3 ),
                      ),

                      labelText:'Name',
                      labelStyle: TextStyle(fontSize: 15,color: Colors.black),
                      hintText: 'Enter Name',
                      hintStyle: TextStyle(fontSize: 15,),
                      prefixIcon: Icon(Icons.account_circle,color: Color(0xFF219ebc),),
                    ),
                    //  controller: myController1,
                    style:TextStyle(color: Colors.black),
                    keyboardType: TextInputType.text,
                  ),
                ),
                Container(
                  margin: EdgeInsets.all(15),
                  child: TextField(
                    decoration: InputDecoration(
                      //fillColor: Colors.white,
                      //filled: true,

                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30),
                        borderSide: BorderSide(color:Color(0xFF219ebc) ,width:3 ),
                      ),

                      labelText:'Email',
                      labelStyle: TextStyle(fontSize: 15,color: Colors.black),
                      hintText: 'Enter your e-mail',
                      hintStyle: TextStyle(fontSize: 15,),
                      prefixIcon: Icon(Icons.alternate_email,color: Color(0xFF219ebc),),
                    ),
                    //  controller: myController1,
                    style:TextStyle(color: Colors.black),
                    keyboardType: TextInputType.emailAddress,
                  ),
                ),
                Container(
                  margin: EdgeInsets.all(15),
                  child: TextField(
                    decoration: InputDecoration(
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30),
                        borderSide: BorderSide(color:Color(0xFF219ebc) ,width:3 ),
                      ),
                      labelText:'Password',
                      labelStyle: TextStyle(fontSize: 15,color: Colors.black,),
                      hintText: 'Enter Password',
                      hintStyle: TextStyle(fontSize: 15,),
                      prefixIcon: Icon(Icons.security,color: Color(0xFF219ebc),),
                      suffixIcon: IconButton(
                        icon: Icon(
                          Icons.visibility,
                          color: Colors.black,
                        ),
                        onPressed: (){

                        },  //onPressed method
                      ),
                    ),
                    maxLength:15,
                    //maxLines: 3,
                    //textAlign: TextAlign.center ,
                    style:TextStyle(color: Colors.black),
                    keyboardType: TextInputType.visiblePassword,
                    obscureText: true,
                  ),


                ),
                Container(
                  margin: EdgeInsets.all(15),
                  child: TextField(
                    decoration: InputDecoration(
                      //fillColor: Colors.white,
                      //filled: true,

                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30),
                        borderSide: BorderSide(color:Color(0xFF219ebc) ,width:3 ),
                      ),

                      labelText:'Phone',
                      labelStyle: TextStyle(fontSize: 15,color: Colors.black),
                      hintText: 'Enter your phone number',
                      hintStyle: TextStyle(fontSize: 15,),
                      prefixIcon: Icon(Icons.phone,color: Color(0xFF219ebc),),
                      prefixText: '+20   ',
                      suffixText: '###',
                    ),
                    //  controller: myController1,
                    style:TextStyle(color: Colors.black),
                    keyboardType: TextInputType.phone,
                  ),
                ),
                // RaisedButton(
                //     child: Text("Sign in",style: TextStyle(fontSize: 18,color: Colors.white),),
                //     color: Color(0xFF219ebc).withOpacity(.5),
                //     shape: RoundedRectangleBorder(
                //         borderRadius: BorderRadius.circular(10),
                //         side: BorderSide(width: 1.5,color: Colors.white)
                //     ),
                //     onPressed: (){
                //       Navigator.of(context).push(
                //           MaterialPageRoute(builder: (_){return HomeScreen();})
                //       );
                //     }
                // ),
              ],
            ),
          ),
        ),
      ),
    );


  }


}
