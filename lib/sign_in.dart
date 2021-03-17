
import 'package:Flutter_TM/home_page.dart';
import 'package:Flutter_TM/register.dart';
import 'package:flutter/material.dart';



class SignIn extends StatefulWidget {
  final Function toggleView;
  SignIn({this.toggleView});
  @override
  _SignInState createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
 
  final _checeKey = GlobalKey<FormState>();
  // Error
String error ='';

  // mail&pass state
  String mail;
  String pass;
//loading state
bool loading =false;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
   
      appBar: AppBar(
       
        elevation: 0.0 ,
        title: Text('sign in'),
        centerTitle: true,
        actions: <Widget>[
          FlatButton.icon(
            onPressed: (){
              Navigator.pushReplacement(context, MaterialPageRoute(builder:(context)=>Register()));

            },
             icon: Icon(Icons.person),
              label: Text('Register')
              )
        ],
        leading:Container(),
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
                  onPressed: ()async{
                    Navigator.pushReplacement(context, MaterialPageRoute(builder:(context)=>HomePage()));
                  },
                  child: Text('sign in'),
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