import 'package:flutter/material.dart';
import 'package:login_bloc/lib/bloc.dart';
import 'package:login_bloc/lib/page2.dart';


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

changeThePage(BuildContext context){
  Navigator.of(context).push(MaterialPageRoute(  
builder: (context) => PageTwo()
  ));
}

  @override
  Widget build(BuildContext context) {
      final bloc = Bloc();

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
               StreamBuilder<String>(
                 stream: bloc.email,
                  builder: (context,snapshot ) => TextField(
                    onChanged: bloc.emailChanged,
                   keyboardType: TextInputType.emailAddress,
                   decoration: InputDecoration(
                     border: OutlineInputBorder(),
                     hintText: "Enter Email",
                     labelText: "Email"  ,
                     errorText: snapshot.error
                     

                   ),
                 ),
               ),
               SizedBox(
                 height: 20,
               ),
                StreamBuilder<String>(
                  stream: bloc.password,
                    builder: (context, snapshot)=>TextField(
                      onChanged: bloc.passwordChanged,
                    obscureText: true,
                   keyboardType: TextInputType.emailAddress,
                   decoration: InputDecoration(
                     border: OutlineInputBorder(),
                     hintText: "Enter Password",
                     labelText: "Password"  ,
                     errorText: snapshot.error

                   ),
               ),
                ),
                 SizedBox(
                 height: 20,
               ),
               StreamBuilder<bool>(
                stream: bloc.submitCheck,
                 builder: (context, snapshot) => RaisedButton(
                     child: Text("Submit"),
                     onPressed: snapshot.hasData? changeThePage(context):null,
                     color: Colors.cyan,
                   )
                 
               )

            ],
          ),
        ),
      ),
      
    );
  }
}