import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/kalkulator.dart';
import 'package:flutter_application_1/pages/register.dart';


void main() {
  runApp(const LogIn());
}


class LogIn extends StatelessWidget {
  const LogIn({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        
      
      body: Container(
        padding: const EdgeInsets.all(8),
        color: Color(0xff0b2447),
        child: Column(mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
          Container(
            width: 100,
            height: 100,
            decoration: BoxDecoration(
              color: Colors.white,
              shape: BoxShape.circle
            ),
            child: Center(child: Icon(Icons.person, size: 80, color:  Colors.black,)),
          ),

          SizedBox(height: 20,),
          Text("Selamat datang dihalaman login", style:TextStyle(fontSize: 25, color: Colors.white),),
          SizedBox(height: 20,),
          TextFormField(
            decoration: InputDecoration(
              focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.black)
              ),
              prefixIcon: Icon(Icons.person, size: 25),
              hintText: "masukkan email",
              hintStyle: TextStyle(color: Colors.blue),
              labelText: "Email",
              labelStyle: TextStyle(color: Colors.white) 
            ),
          ),
          TextFormField(
            obscureText: true,
            decoration: InputDecoration(
              focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.black)
              ),
              prefixIcon: Icon(Icons.lock, size: 25),
              hintText: "masukkan password",
              hintStyle: TextStyle(color: Colors.blue),
              labelText: "Password",
              labelStyle: TextStyle(color: Colors.white) 
            ),
          ),

          SizedBox(height: 20,),
          Card(
            color: Color(0xff035397),
            elevation: 5,
            child: Container(
              height: 50,
              child: InkWell(
                splashColor: Color(0xfffcd900),
                onTap: (){
                  Navigator.push(context,
                  MaterialPageRoute(builder: (context)=>BMI())
                  );
                },
                child: Center(
                  child: Text("Login", style:  TextStyle(fontSize: 20, color: Colors.white),
                  ),
                ),
              ),
             ),
          ),
          /*ElevatedButton(onPressed: (){Navigator.push(context,
          MaterialPageRoute(builder: (context)=>register())
          );
          }, 
          child: Text("Sign up"),
          
          )*/

          SizedBox(height: 20,width: 20,),
          Card(
            color: Color(0xfffcd900),
            elevation: 5,
            child: Container(
              height: 50,
              child: InkWell(
                splashColor: Color(0xff035397),
                onTap: (){
                  Navigator.push(context,
                  MaterialPageRoute(builder: (context)=>register())
                  );
                },
                child: Center(
                  child: Text("Register", style:  TextStyle(fontSize: 20, color: Colors.white),
                  ),
                ),
              ),
             ),
          ),
        ],
        )
      ),
          )
    );
  }
}