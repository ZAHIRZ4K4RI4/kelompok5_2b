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
                  margin: const EdgeInsets.fromLTRB(20, 20, 5, 20),
                child: const Image(image: AssetImage('assets/img/logo.jpeg',),
                height: 80,
                width: 100,
                ),
              ),
              Column(
                children: [
          
                  const Text("Howheal.sac",
                  style:  TextStyle(
                    fontSize: 18,
                  ),
                ),
                 const SizedBox(height: 10,),
                const Text("Make your Shoes Better",
        

                ),
                  
                ],
              ),
              Row(
                children: [
                  const Image(image: AssetImage('assets/img/bells.jpg',)),
                   const Image(image: AssetImage('assets/img/titik.jpg',)),
                  
                ],
              ),

              ],),
              Column(
                children: [
                  const SizedBox(height: 20, ),
                  const Text('Zahir                   =0842578671 ')
    
              ],),
              const SizedBox(height:10 ),
              Container(
                margin: const EdgeInsets.fromLTRB(60, 0,60, 0),
                padding: const EdgeInsets.all(10),
                color: Colors.green,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                    ),
                    const Text('Id Pelayanan : PL001', style:  TextStyle(
                    fontSize: 12,
                  ),),
                    const SizedBox(height: 5),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text('Pelayanan : Re Colour', style:  TextStyle(
                        fontSize: 12,
                  ),), const Text('19-14-2022', style:  TextStyle(
                        fontSize: 10,
                  ),),
                      ],
                    ),
                    const SizedBox(height: 5,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text('Status: Belum Selesi', style:  TextStyle(
                        fontSize: 12,
                  ),),
                  const Text('3 Hari', style:  TextStyle(
                        fontSize: 10,
                  ),),
                      ],
                    ),
                    const SizedBox(height: 5,),

                    
                    Row(
                      children:[
                        
                      ]
                      
                    )
                    
                  ],
                ),
              ),
              const SizedBox(height: 40,),
              
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                  const Image(image: AssetImage('assets/img/gpay.png',),),
                  const Image(image:AssetImage('assets/img/store.jpg')),
                  
                ],),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        color: Colors.grey,
                        padding: const EdgeInsets.all(10),
                        margin: const EdgeInsets.all(20),
                        child: Row(
                          children: [
                            const Image(image: AssetImage('assets/img/wa.PNG',)),
                            const SizedBox(width: 10,),
                            const Text('CP: 082132622013'),
                          ],
                        ),
                      ),
                      Container(
                        color: Colors.grey,
                        padding: const EdgeInsets.all(10),
                        margin: const EdgeInsets.all(30),
                        child: Row(
                          children: [
                            const Image(image: AssetImage('assets/img/ig.PNG',)),
                            const SizedBox(width: 5,),
                            const Text('IG:@HOWHEAL.SAC'),
                          ],
                        ),
                      ),
                    ]
                  ),
                ),
            ],

                          
          ),
          
        ),
        
        
 
      );
  }
}