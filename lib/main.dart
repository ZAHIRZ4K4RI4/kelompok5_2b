import 'package:flutter/material.dart';
import 'package:projek_flutter/Menu.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'History.dart';
import 'dart:convert';
import 'package:http/http.dart';
import 'package:quickalert/quickalert.dart';
void main(){  
  
  runApp( MaterialApp(
    debugShowCheckedModeBanner: false,
    home : MyWidget()));
}

class MyWidget extends StatefulWidget {
   MyWidget ({Key? key}):super(key: key);


  @override
  State<MyWidget> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<MyWidget> {

  final _formKey = GlobalKey<FormState>();


  final TextEditingController ID_CustomerController = TextEditingController();
  final TextEditingController TeleponController = TextEditingController();
 


  _cekLogin(String ID_Customer, Telepon) async {
    try {
      Response response = await post(
          Uri.parse('http://127.0.0.1:8000/api/login'),
          body: {'email': ID_Customer, 'password': Telepon});

      if (response.statusCode == 201) {
        var data = jsonDecode(response.body.toString());
        print(data);
        print("data sukses");
        Navigator.of(context)
            .push(MaterialPageRoute(
          builder: (context) => Menu(),
        ))
            .then((value) {
          setState() {}
        });
      } else if (response.statusCode == 401) {
        QuickAlert.show(
          context: context,
          type: QuickAlertType.error,
          title: 'Oops...',
          text: 'Maaf, ID_ Customer atau Telepon yang anda masukkan salah',
        );
      } else if(ID_Customer.isEmpty||Telepon.isEmpty){
        QuickAlert.show(
          context: context,
          type: QuickAlertType.error,
          title: 'Oops...',
          text: 'Masukan, ID_ Customer atau Telepon anda!!',
        );
      }
    } catch (e) {
      QuickAlert.show(
          context: context,
          type: QuickAlertType.error,
          title: 'Oops...',
          text: 'Masukan, ID_ Customer atau Telepon anda!!',
        );
    }
  }

  
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
                    child: Image(image: AssetImage('assets/img/jaga.PNG'),

                    ),
                  ),
                  Text('Howheal.Sac',
                    textAlign: TextAlign.center,
                    style:TextStyle(
                      color: Colors.white,
                      fontSize: 50,
                    ),
                  ),
                  Text('Make Your Shoes Better',
                     style:TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                    ),
                  ),
                Container(
                  height: 30,
                ),
                 TextFormField(
                  controller: ID_CustomerController,
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
                    controller: TeleponController,
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
                        
                       _cekLogin(ID_CustomerController.text.toString(), TeleponController.text.toString());
                    },
                    child: Container(
                      height: 40,
                      padding: EdgeInsets.all(10.0),
                     
                        child: Text('LOGIN',
                        style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                      ),
                      ),

                      
                    style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(4),
                      ),
                    ),
                  ),
                 ),
                 
                ],
              ),
            ),
          ),
        ),
       );
  }
  
}