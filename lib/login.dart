import 'package:flutter/material.dart';
import 'package:flutter_signin_button/flutter_signin_button.dart';
class Login extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:Text("Login",style:TextStyle(fontSize:18.0)),
      ),
      body:Container
      (child:
      Column(
        children: <Widget>[
          Container(
            height:300.0,
            child:Card(
              child:Column(
                children:<Widget>[
                  Container(
                    margin:EdgeInsets.only(top:20.0),
                    child:
                    Column(children: <Widget>[
                      Container(
                        child:Text("We will send an SMS with a confirmation code to this number",style:TextStyle(fontSize:18.0),textAlign: TextAlign.center,),
                        padding: EdgeInsets.all(10.0),
                        margin:EdgeInsets.only(left:20.0),
                      ),
                      Container(
                        padding:EdgeInsets.all(10.0),
                        margin:EdgeInsets.only(left:50.0),  
                        width:200.0,
                          child:TextField(decoration:InputDecoration(hintText: "Phone Number"),keyboardType: TextInputType.number,),
                            )
                    ],)
                  ),
                  Divider(color:Colors.black),
                  Container(
                    margin:EdgeInsets.only(top:10.0),
                    child:Column(
                      children:<Widget>[
                        Container(padding:EdgeInsets.all(10.0),child: Text("Use your referral code here")),
                        Container(width:100.0,child: TextField(decoration: InputDecoration(hintText:"Enter Code"),))
                      ]
                    )

                  )
                ]
              )
            )
          )
        ,
        RaisedButton(onPressed:(){},child:Text("Next")),
Container(
  margin:EdgeInsets.fromLTRB(120.0,30.0,0.0, 0.0),
  child:Row(children:<Widget>[
  SignInButton(
    Buttons.Facebook,
    mini:true,
    onPressed:(){}
    ),SignInButton(
    Buttons.Email,
    mini:true,
    onPressed:(){}
    ),SignInButton(
    Buttons.Twitter,
    mini:true,
    onPressed:(){}
    )]
    ))
  ])
        )
    );
  }
}