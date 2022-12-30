

import 'package:flutter/material.dart';
import 'package:projek_flutter/Menu.dart';
import 'History.dart';

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
  class _SignInForm extends State<SignInform> {
  final _formKey = GlobalKey<FormState>();
  String? ID_Customer;
  String? Telepon;
  bool? remember = false;

  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  bool visible = false;
  final String sUrl = "https://127.0.0.1:8000/api/";

  @override
  void initState() {
    super.initState();
  }

  _cekLogin(String email, password) async {
    setState(() {
      visible = true;
    });
    final prefs = await SharedPreferences.getInstance();

    try {
      Response response = await post(
          Uri.parse('http://127.0.0.1:8000/api/login'),
          body: {'email': email, 'password': password});

      if (response.statusCode == 200) {
        var data = jsonDecode(response.body.toString());
        print(data);
        print("data sukses");
        Navigator.of(context)
            .push(MaterialPageRoute(
          builder: (context) => HomeScreens(),
        ))
            .then((value) {
          setState() {}
        });
      } else if (response.statusCode == 401) {
        QuickAlert.show(
          context: context,
          type: QuickAlertType.error,
          title: 'Oops...',
          text: 'Maaf, Email atau Password yang anda masukkan salah',
        );
      } else {
        print("data Errror");
      }
    } catch (e) {
      print("errror");
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
                      child: Text('LOGIN',
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