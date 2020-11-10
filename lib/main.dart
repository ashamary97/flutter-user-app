import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

void main()=>runApp(Home());
class Home extends StatelessWidget {
  TextEditingController getUsername=TextEditingController();
  TextEditingController getPassword=TextEditingController();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("Uesr App"),
          backgroundColor: Colors.deepPurpleAccent,
        ),
        body: Container(
          padding: EdgeInsets.only(left: 20.0,right: 20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              TextField(
                controller: getUsername,
                decoration: InputDecoration(
                  hintText: "Enter Username",
                  border: OutlineInputBorder()
                ),
              ),
              SizedBox(height: 20.0,),

              TextField(
                controller: getPassword,
                decoration: InputDecoration(
                  hintText: "Enter password",
                  border: OutlineInputBorder()
                ),
                obscureText: true,
              ),
              SizedBox(height: 20.0,),
              RaisedButton(
                color: Colors.blue,
                  onPressed: (){
                String uname=getUsername.text;
                String pswd=getPassword.text;
                print(uname);
                print(pswd);
              },
              child: Text("Login"),

              ),
              SizedBox(height: 20.0,),
              RaisedButton(
                color: Colors.blue,
                onPressed: (){


              },
                child: Text("Register"),
              )


            ],
          ),
        ),
      ),
    );
  }
}

