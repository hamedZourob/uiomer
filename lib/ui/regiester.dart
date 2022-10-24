
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

import 'login.dart';


class Regiester extends StatefulWidget {
  @override
  RegiesterState createState() {
    return RegiesterState();
  }
}

class RegiesterState extends State<Regiester> {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Container(
          color: Colors.blue,
          child: Center(

            child: SingleChildScrollView(
              child: Container(
                margin: EdgeInsets.only(top: 50),
                child: Container(
                  margin: EdgeInsets.symmetric(horizontal: 20),
                  child: Form(

                    key: _formKey,
                    child: Column(children: <Widget>[
                      Text("Welcome to Word",style: TextStyle( fontSize: 30, fontWeight: FontWeight.bold,color: Colors.white),),
                      SizedBox(height: 90,),
                      Card(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(14)),
                        elevation: 8,
                        child: TextFormField(

                          textInputAction: TextInputAction.newline,
                          decoration: InputDecoration(labelText: 'Enter your name',
                            hintText: 'name',
                            border: InputBorder.none,
                            prefixIcon: Icon(Icons.person),),
                        ),
                      ),
                      Card(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(14)),
                        elevation: 8,
                        child: TextFormField(
                          decoration: InputDecoration(labelText: 'Enter your email',
                            border: InputBorder.none,
                            hintText: 'email',
                            prefixIcon: Icon(Icons.email),),

                        ),
                      ),
                      Card(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(14)),
                        elevation: 8,
                        child:TextFormField(
                          decoration: InputDecoration(
                            labelText: 'Enter your password',
                            hintText: 'password',
                            border: InputBorder.none,
                            prefixIcon: Icon(Icons.remove_red_eye),),
                        ),),
                      Card(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(14)),
                        elevation: 8,
                        child: TextFormField(

                          decoration: InputDecoration(labelText: 'Enter your phone',
                            hintText: 'phone',
                            border: InputBorder.none,
                            prefixIcon: Icon(Icons.phone),),
                        ),
                      ),

                      SizedBox(height: 20,),
                      Card(

                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(25)),
                        elevation: 8,
                        child: Container(
                          decoration: BoxDecoration(
                              color: Colors.lightBlueAccent,
                              borderRadius: BorderRadius.all(
                                  Radius.circular(25))),
                          width: double.infinity,
                          height: 50,
                          child: ElevatedButton(

                            onPressed: () {},
                            child: Text("Register"),
                            style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.transparent,
                                shadowColor: Colors.transparent),

                          ),
                        ),),InkWell(

                        child: Align(
                          alignment: Alignment.bottomCenter,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text("has Acount?"),
                              TextButton(onPressed: (){
                                Navigator.push(context, MaterialPageRoute(builder: (builder) =>Login()));
                              }, child: Text('Login',style: TextStyle(color: Colors.white),))
                            ],
                          ),
                        ),
                      )]),
                  ),
                ),
              ),
            ),
          ),)
        ,
      )
      ,
    );
  }
}
