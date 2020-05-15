import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:share/share.dart';

class DrawerElement extends StatelessWidget {
  
  String text,screen;
  IconData icon;
  DrawerElement(text,icon,screen)
  {
    this.text=text;
    this.icon=icon;
    this.screen=screen;
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      child:InkWell(
        onTap:()=>{
          
          if(text=="share")
          {
            Share.share("Check out this awesome grocery app")
          }
          else
          {
            Navigator.pushNamed(context,screen)
          }
        },
        child:Container(
          child:Row(
            children: <Widget>[
          SizedBox(width:10.0),
          Icon(
            icon,
            color:Colors.black
          ),
          SizedBox(width:15.0),
          Text(text)
        ],
      ),
      height:50.0,
    )
      )
      
    );
  }
}


class Banner extends StatelessWidget {
  
  String text;
  Banner(text)
  {
    this.text=text;
  }
  @override
  Widget build(BuildContext context) {
    return Container(
      height:100.0,
      color:Colors.amber,
      child:
      Center(
        child: Text(text),
      ),   
    );
  }
}

class MiniCard extends StatelessWidget {
  
  String text,imgsrc;
  MiniCard(text,imgsrc)
  {
    this.text=text;
    this.imgsrc=imgsrc;
  }
  @override
  Widget build(BuildContext context) {
    return Container(
      width:192.0,
      height:190.0,
      child:Card(
      child:Column(
        children: <Widget>[
          Image.asset(imgsrc),
          Text(text),
        ],)
    ),
    );
  }
}

class CardHelper 
{
  final String text,imgsrc;
  CardHelper(this.text,this.imgsrc);
}


class DetailCard extends StatelessWidget {
  
  final String text;
  final CardHelper card1,card2,card3,card4;

  DetailCard(this.text,this.card1,this.card2,this.card3,this.card4);
  @override
  Widget build(BuildContext context) {
    return Container(
      height:350.0,
      child: Card(
        child:Column(
          children: <Widget>[
            Banner(text),
            Container(
              height:120.0,
              child:Row(
              children: <Widget>[
                MiniCard(card1.text,card1.imgsrc),
                MiniCard(card2.text,card2.imgsrc),
              ],
            ),
            ),
            Container(height:120.0,child:Row(  
              children: <Widget>[
                MiniCard(card1.text,card2.imgsrc),
                MiniCard(card1.text,card2.imgsrc),
              ],
            ) 
          )
            
          ], 
        )
        
      ),
    );
  }
}




class Index extends StatefulWidget 
{
  @override
  _IndexState createState() => _IndexState();
}




class _IndexState extends State<Index> 
{
  
  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      drawer:Drawer(
        child:ListView(
          children:<Widget>[
            Container(
              child:Center(child:Text("Welcome")),
              height:50.0,
              color:Colors.grey,
            ),
            Container(
              margin:EdgeInsets.fromLTRB(10.0, 10.0, 0.0, 0.0),
              child:Row(
                children: <Widget>[
                  Text("Dark Mode"),
                  SizedBox(width:150.0),
                  Switch(
                    value:false,
                    onChanged:(value){
                     setState((){
                       if(value==true)
                       value=false;
                       else
                       value=true;
                     });
                    }
                  )
                ],
              ),
            ),
            DrawerElement("Current Location",Icons.location_on,'/location'),
            DrawerElement("Login",Icons.face,'/login'),
            DrawerElement("My Address",Icons.map,'/address'),
            DrawerElement("My Orders",Icons.face,'/orders'),
            DrawerElement("My Cart",Icons.shopping_cart,'/cart'),
            Container(
              child:Text("Others",
              style:TextStyle(
                fontWeight: FontWeight.w300, 
              )
              ),
              color:Colors.white10,
              margin:EdgeInsets.fromLTRB(10.0,20.0,0.0,0.0),
            ),
            DrawerElement("Customer Support",Icons.call,'/support'),
            DrawerElement("Rate Us",Icons.rate_review,'rate'),
            DrawerElement("Share",Icons.share,'share'),
            DrawerElement("About Us",Icons.share,'/about'),
          ]
        )
      ),
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Row(
          children: <Widget>[
            Container(
              
              child:Column(
                children:<Widget>[
                  Text("Delivery Location",
                  style:TextStyle(fontSize:10)),
                  SizedBox(height: 8.0,),
                  Text("Current Location",style:TextStyle(fontSize:15)),
                  SizedBox(height:2.0),
                ]
              )
            ),
            SizedBox(width:150.0),
            Icon(Icons.shopping_cart),
            ]
            ),
      ),
      body:
      SingleChildScrollView(
              child: Container(
          child:Column(
            children: <Widget>[
              CarouselSlider(
              options:CarouselOptions(
                height:200.0,
                aspectRatio: 16/9,
                viewportFraction: 1.0,
                enableInfiniteScroll: true,
                autoPlay: true,
                ),
              items:[
                Image.asset("images/atta.jpeg"),
                Image.asset("images/daily.jpeg"),
                Image.asset("images/masala.jpeg"),   
                Image.asset("images/pulses.jpeg"),
                ]
            ),
            DetailCard("Must have this Season",new CardHelper("Atta","images/atta.jpeg"),new CardHelper("daily","images/daily.jpeg"),new CardHelper("masala","images/masala.jpeg"),new CardHelper("pulses","images/pulses")),
            DetailCard("Must have this Season",new CardHelper("Atta","images/atta.jpeg"),new CardHelper("daily","images/daily.jpeg"),new CardHelper("masala","images/masala.jpeg"),new CardHelper("pulses","images/pulses")),
                    
          ],
            )
        ),
      )
    );
}
}
