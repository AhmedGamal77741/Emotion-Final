import 'package:Flutter_TM/sign_in.dart';
import 'package:flutter/material.dart';





class Register extends StatefulWidget {
   final Function toggleView;
  Register({this.toggleView});
  @override
  _RegisterState createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
   
   final _checeKey = GlobalKey<FormState>();

  // mail&pass state
  String mail;
  String pass;
// Error
String error ='';

// loading state
bool loading = false; 
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
     
      appBar: AppBar(
       
        elevation: 0.0 ,
        title: Text('sign up'),
        centerTitle: true,
        actions: <Widget>[
          FlatButton.icon(
            onPressed: (){
                 Navigator.pushReplacement(context, MaterialPageRoute(builder:(context)=>SignIn()));


            },
             icon: Icon(Icons.person),
              label: Text('Sign in')
              )
        ],
        leading: Container(),
      ),
      body: SingleChildScrollView(
              child: Container(
          padding: EdgeInsets.symmetric(vertical:20.0,horizontal: 50.0),
          child: Form(
            key: _checeKey,
            child:Column(
              children: <Widget>[
                SizedBox(height: 20,),
                TextFormField(
                 
                  validator: (val)=> val.isEmpty? 'Enter an E-mail': null ,
                  onChanged: (val){
                    setState(()=>mail =val );

                  }
                ),
                SizedBox(
                  height: 20.0
                ),
                TextFormField(
                
                  validator: (val)=> val.length < 6?'pass shouldnot be < 6 digits': null,
                  obscureText: true,
                  onChanged: (val){
                    setState(()=> pass=val);
                  },
                ),
                SizedBox(height:20),
                RaisedButton(
                  onPressed: (){
                    Navigator.pushReplacement(context, MaterialPageRoute(builder:(context)=>SignIn()));
                   
                  },
                  child: Text('sign up'),
                  color: Colors.greenAccent,
                  
                  ),
                  SizedBox(height:12),
                  Text(error,
                  style: TextStyle(
                    color: Colors.red,
                    fontSize: 14.0
                  )
                  )

              ]
            )
          )
        ),
      ),
      
    );
  }
}