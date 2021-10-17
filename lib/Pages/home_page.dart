import 'package:flutter/material.dart';

class homepage extends StatefulWidget {
  const homepage({Key? key}) : super(key: key);

  @override
  State<homepage> createState() => _homepageState();
}

class _homepageState extends State<homepage> {
  goto_details(BuildContext context){

  }
  @override
  Widget build(BuildContext context) {
    int days = 30;
    var name = 'unslpash';

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurpleAccent,
        title:Row(
          children: [
            Text("Details_"),
            SizedBox(
              width: 200.0,
            ),
            Icon(Icons.logout),
          ],
        ),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(vertical: 50.0,horizontal: 20.0),
        child: SingleChildScrollView(
          child: Column(
            children:[
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 10.0),
                child: Row(
                    children:[
                      Container(
                        child : Column(children: [
                          SizedBox(
                            height: 15.0,
                          ),
                          Text("Heart Rate", style: TextStyle(
                            fontSize: 20.0,
                            fontWeight: FontWeight.bold,
                            color: Colors.black54,
                          ),
                            ),
                          SizedBox(
                            height: 15.0,
                          ),
                          Row(children: [
                            SizedBox(
                              width: 30.0,
                            ),
                            Text("88", style: TextStyle(
                                fontSize: 60.0,
                                fontWeight: FontWeight.w900,
                              ),
                            ),
                            SizedBox(
                              width: 7.0,
                            ),
                            Text("bps",style: TextStyle(
                                fontSize: 15.0
                             ),
                            )
                          ],),
                          SizedBox(
                            height: 25.0,
                          ),
                          Container(
                            decoration: BoxDecoration(
                                color: Colors.deepPurpleAccent,
                              borderRadius: BorderRadius.only(bottomLeft: Radius.circular(16),bottomRight: Radius.circular(16))
                            ),
                            height: 52.0,
                            width: 160.0,
                          ),
                        ],),
                        margin: EdgeInsets.symmetric(horizontal: 5.0),
                        height: 200.0,
                        width: 150.0,
                        decoration: BoxDecoration(
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black12,
                              offset: Offset(10.0,10.0),
                              blurRadius: 6.0,
                            ),
                          ],
                          borderRadius: BorderRadius.circular(16.0),
                          color: Colors.white,
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.symmetric(horizontal: 5.0),
                        height: 200.0,
                        width: 150.0,
                        decoration: BoxDecoration(
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black12,
                              offset: Offset(10.0,10.0),
                              blurRadius: 6.0,
                            ),
                          ],
                          borderRadius: BorderRadius.circular(16.0),
                          color: Colors.white,
                        ),
                      ),
                    ]
                ),
              ),

            ]
          ),
        ),
      ),
    drawer: Drawer(),
    );
  }
}