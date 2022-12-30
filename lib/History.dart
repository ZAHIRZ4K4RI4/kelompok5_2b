import 'package:flutter/material.dart';


class Home extends StatefulWidget {
  Home({super.key});

  @override
  State<Home> createState() => _nameState();    
}

class _nameState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
        body:
        
        Container(
          child: Column(
            children: [
              Row( mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                Container(
                  margin: EdgeInsets.fromLTRB(20, 20, 5, 20),
                child: Image(image: AssetImage('assets/img/logo.jpeg',),
                height: 80,
                width: 100,
                ),
              ),
              Column(
                children: [
          
                  Text("Howheal.sac",
                  style:  TextStyle(
                    fontSize: 18,
                  ),
                ),
                 SizedBox(height: 10,),
                Text("Make your Shoes Better",
        

                ),
                  
                ],
              ),
              Row(
                children: [
                  Image(image: AssetImage('assets/img/bells.jpg',)),
                   Image(image: AssetImage('assets/img/titik.jpg',)),
                  
                ],
              ),

              ],),
              Column(
                children: [
                  SizedBox(height: 20, ),
                  Text('Rena Amalia Afifah                   =089676628458 ')
    
              ],),
              SizedBox(height:10 ),
              Container(
                
                margin: EdgeInsets.fromLTRB(100, 0,80, 0),
                padding: EdgeInsets.all(10),
                color: Colors.green,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                    ),
                    Text('Id Pelayanan : PL001',),
                    SizedBox(height: 5,),
                    Text('Pelayanan    : Re Colour                     19-11-2022             ',),
                    SizedBox(height: 5,),
                    Text('Status       : Belum Selesai                           3 hari              ',),
                    SizedBox(height: 5,),
                    
                    Row(
                      children:[
                        
                      ]
                      
                    )
                    
                  ],
                ),
              ),
              SizedBox(height: 40,),
              
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                  Image(image: AssetImage('assets/img/gpay.png',),),
                  Image(image:AssetImage('assets/img/store.jpg')),
                  
                ],),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      color: Colors.grey,
                      padding: EdgeInsets.all(10),
                      margin: EdgeInsets.all(50),
                      child: Row(
                        children: [
                          Image(image: AssetImage('assets/img/wa.PNG',)),
                          SizedBox(width: 10,),
                          Text('CP: 082132622013'),
                        ],
                      ),
                    ),
                    Container(
                      color: Colors.grey,
                      padding: EdgeInsets.all(10),
                      margin: EdgeInsets.all(30),
                      child: Row(
                        children: [
                          Image(image: AssetImage('assets/img/ig.PNG',)),
                          SizedBox(width: 5,),
                          Text('IG:@HOWHEAL.SAC'),
                        ],
                      ),
                    ),
                  ]
                ),
            ],

                          
          ),
          
        ),
        
        
 
      );
  }
}



