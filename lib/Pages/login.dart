import 'dart:ui';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:untitled/Utilities/routies.dart';

class loginpage extends StatefulWidget {
  const loginpage({Key? key}) : super(key: key);

  @override
  State<loginpage> createState() => _loginpageState();
}
String name = "";
bool Change = false;
class _loginpageState extends State<loginpage> {
  @override
  Widget build(BuildContext context) {
    return Material(
      child: Padding(
        padding: const EdgeInsets.all(60.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: 40.0,
              ),
              Image.asset("assets/images/undraw_Access_account_re_8spm_1.png",fit: BoxFit.cover,),
              SizedBox(
                height: 40.0,
              ),
              Text("Hi $name"),
              TextFormField(
                decoration: InputDecoration(
                  labelText: "Username",
                  hintText: "Enter Username",
                ),
                onChanged: (value){
                  name = value ;
                  setState(() {});
                },
              ),
              TextFormField(
                obscureText: true,
                decoration: InputDecoration(
                  labelText: "Password",
                  hintText: "Enter Password",
                ),
              ),
              SizedBox(
                height: 40.0,
              ),
              InkWell(
                onTap: () async {
                  Navigator.pushNamed(context, MyRoutes.HomeRoute);
                  setState(() {
                    Change = true;
                  });
                  await Future.delayed(Duration(seconds: 1));
                },
                child: AnimatedContainer(
                  duration: Duration(seconds: 1),
                  height : 50.0,
                  width : 150.0,
                  child: Center(
                    child:Change? Icon(Icons.done,color: Colors.white,) : Text("Login",
                    style:TextStyle(
                      fontWeight : FontWeight.bold,
                      color: Colors.white,
                    ),
                    ),
                  ),
                  decoration: BoxDecoration(
                    color: Colors.deepPurple,
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: [
                      BoxShadow(
                        blurRadius: 20.0,
                        color: Colors.black26,
                        offset: Offset(10.0,10.0),
                        spreadRadius: 0,
                      )
                    ]
                  ),
                ),
              )// ElevatedButton(
              //   onPressed:(){
              //     print("Hai world");
              //     Navigator.pushNamed(context, MyRoutes.HomeRoute);
              //   },
              //   child: Text("Login"),
              //   style: TextButton.styleFrom(
              //       minimumSize: Size(100, 40),
              //       textStyle: TextStyle(
              //           fontWeight: FontWeight.bold
              //       )
              //   ),
              // ),
            ],
          ),
        ),
      ),
    );
  }
}
