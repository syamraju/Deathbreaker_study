import 'dart:ui';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
//import 'package:google_fonts/google_fonts.dart';
import 'package:untitled/Utilities/routies.dart';

class loginpage extends StatefulWidget {
  const loginpage({Key? key}) : super(key: key);

  @override
  State<loginpage> createState() => _loginpageState();
}
String name = "";
bool Change = false;
final _formkey = GlobalKey<FormState>();

class _loginpageState extends State<loginpage> {
  @override

  movetohome(BuildContext Context) async{
    setState((){
      Change = true;
    });
    if (_formkey.currentState!.validate()){
      await Future.delayed(Duration(seconds: 1));
      await Navigator.pushNamed(context, MyRoutes.HomeRoute);
      setState(() {
        Change = false;
      });
    }

  }

  Widget build(BuildContext context) {
    return Material(
      child: Padding(
        padding: const EdgeInsets.all(60.0),
        child: SingleChildScrollView(
          child: Form(
            key: _formkey,
            child: Column(
              children: [
                SizedBox(
                  height: 40.0,
                ),
                Image.asset("assets/images/undraw_Access_account_re_8spm_1.png",fit: BoxFit.cover,),
                SizedBox(
                  height: 40.0,
                ),
                Text("Proto DB",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20.0,
                  ),
                ),
                TextFormField(
                  decoration: InputDecoration(
                    labelText: "Username",
                    hintText: "Enter Username",
                  ),
                  validator: (value){
                    if (value!.isEmpty){
                      return "Value is empty";
                    }
                    if (value.compareTo("sukumaran") != 0) {
                      return "Worng User";
                    }
                    return null;
                  },
                ),
                TextFormField(
                  obscureText: true,
                  decoration: InputDecoration(
                    labelText: "Password",
                    hintText: "Enter Password",
                  ),
                  validator: (value){
                    if (value!.isEmpty){
                      return "Value is empty";
                    }
                    if (value.compareTo("123456") != 0) {
                      return "Worng Password";
                    }
                    return null;
                  },
                ),
                SizedBox(
                  height: 40.0,
                ),
                Container(
                  decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                          blurRadius: 20.0,
                          color: Colors.black26,
                          offset: Offset(10.0,10.0),
                          spreadRadius: 0,
                        )
                      ]
                  ),
                  child: Material(
                    color: Colors.deepPurple,
                    borderRadius: BorderRadius.circular(10),
                    child: InkWell(
                      splashColor: Colors.red,
                      onTap: () => movetohome(context),
                      child: AnimatedContainer(
                        duration: Duration(seconds: 3),
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
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 40.0,
                ),
                Center(
                  child: Text("deathbreaker for prototyping only"),
                )// ElevatedButton(
              ],
            ),
          ),
        ),
      ),
    );
  }
}
