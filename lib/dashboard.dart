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
        body:Container(
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
                  Text('Howheal.sac'),
                SizedBox(height: 30,),

                Text("perum BCI (Brawijaya Cefilla indah blok"),
                Text("R-18) kebalenan, Banyuwangi"),
                ],
              ),
              Column(
                children: [
                  Image(image: AssetImage('assets/img/bells.jpg',)
                  
                  ),
                ],
              ),

              ],),
              Column(children: [
                  Text('Make your Shoes Better'),
                SizedBox(height: 10,),
                Text('Anda dapat melihat catatan untuk kemudahan'),
              ],),
              SizedBox(height: 20),
              Container(
                margin: EdgeInsets.fromLTRB(80, 0,80, 0),
                padding: EdgeInsets.all(10),
                color: Colors.green,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      padding: EdgeInsets.fromLTRB(0, 0, 100, 5),
                    child: Image(image: AssetImage('assets/img/book.jpg'),),
                    ),
                    SizedBox(height: 10,),
                    Text('Layanan',style: TextStyle(color: Colors.white,),),
                    SizedBox(height: 5,),
                    Row(
                      children: [
                        SizedBox(width: 10,),
                        Text('CUSTOMER',style: TextStyle(color: Colors.white, fontSize: 15, fontWeight: FontWeight.bold,),),
                        Image(image: AssetImage('assets/img/panah.jpg'),),
                       Row( mainAxisAlignment: MainAxisAlignment.spaceBetween,)

                        
                      ],
                    ),
                  
              
                  ],
                ),
                
                
              )
              
              
            ],
            

          ),
          
          
        )


        
      );
  }
}



