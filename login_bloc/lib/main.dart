import 'package:flutter/material.dart';


void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
      theme: ThemeData(  
        primarySwatch: Colors.cyan
      ),

      
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Login Page"),
      ),
      body: SingleChildScrollView(
        
              child: Container(
                 padding: EdgeInsets.all(16),
                 height: MediaQuery.of(context).size.height,
          child: Column(
            mainAxisSize:MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
               StreamBuilder(

                                builder: (context,snapshot ) => TextField(
                   keyboardType: TextInputType.emailAddress,
                   decoration: InputDecoration(
                     border: OutlineInputBorder(),
                     hintText: "Enter Email",
                     labelText: "Email"  

                   ),
                 ),
               ),
               SizedBox(
                 height: 20,
               ),
                StreamBuilder(
                                  builder: (context, snapshot)=>TextField(
                    obscureText: true,
                   keyboardType: TextInputType.emailAddress,
                   decoration: InputDecoration(
                     border: OutlineInputBorder(),
                     hintText: "Enter Password",
                     labelText: "Password"  

                   ),
               ),
                ),
                 SizedBox(
                 height: 20,
               ),
               RaisedButton(
                 child: Text("Submit"),
                 onPressed: (){},
                 color: Colors.cyan,
               )

            ],
          ),
        ),
      ),
      
    );
  }
}