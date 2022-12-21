

import 'package:flutter/material.dart';
import 'dashboard.dart';

void main(){
  
  runApp( MaterialApp(
    home : MyWidget()));
}

class MyWidget extends StatefulWidget {
   MyWidget ({Key? key}):super(key: key);

  @override
  State<MyWidget> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<MyWidget> {
  
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
          
            decoration: BoxDecoration(
              color:Color.fromARGB(255, 95, 99, 99),
              
            ),
          child: Center(
            child: Container(
               margin: new EdgeInsets.symmetric(horizontal: 30.0),
              child: Column(
                
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50),
                    ),
                    child: Image(image: AssetImage('assets/img/logo.jpeg'),

                    ),
                  ),
                  Text('Howheal.Sac',
                    textAlign: TextAlign.center,
                    style:TextStyle(
                      color: Colors.white,
                      fontSize: 50,
                    ),
                  ),
                  Text('Hati Suci Pasti Sepatu bersih',
                     style:TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                    ),
                  ),
                Container(
                  height: 30,
                ),
                 TextFormField(
                  decoration:  InputDecoration(
                     fillColor: Colors.white,
                    filled: true,
                    labelText: 'ID Customer',
                    hintText: 'Masukan Id Kamu',
                    prefixIcon: Icon(Icons.person),
                    border: OutlineInputBorder(
              
                    ),
                  ),
                 ),
                 Container(
                  height: 30,
                ),
                   TextFormField(
                  decoration:  InputDecoration(
                    fillColor: Colors.white,
                    filled: true,
                    labelText: 'Telepon',
                    prefixIcon: Icon(Icons.phone),
                    border: OutlineInputBorder(),
                  ),
                 ),
                 Container(
                  height: 20,
                 ),
                 SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: (){
                        
                       Navigator.pushReplacement(context,
                        MaterialPageRoute(
                          builder: (context) {
                            return Home();
                          },
                        )
                       );
                      
                    },
                    style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(4),
                      ),
                    ),
                    child:  Padding(padding: EdgeInsets.all(10.0),
                      child: Text('Login',
                        style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                      ),
                    ),
                
              

                  ),
                 )
                ],
              ),
            ),
          ),
        ),
       );
  }
  
}