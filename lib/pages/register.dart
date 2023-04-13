import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/login.dart';

void main() {
  runApp( register());
}


class register extends StatelessWidget {
  const register({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        
      
      body: Container(
        padding: const EdgeInsets.all(8),
        color: Color(0xffcff5e7),
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
          Text("Selamat datang dihalaman Register", style:TextStyle(fontSize: 25, color: Color(0xff0b2447)),),
          Text("Silahkan lengkapi data dibawah ini untuk mendapatkan akun", style:TextStyle(fontSize: 18, color: Color(0xff0b2447)),),
          SizedBox(height: 20,),
          TextFormField(
            decoration: InputDecoration(
              focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.black)
              ),
              prefixIcon: Icon(Icons.person, size: 25,color: Colors.black,),
              hintText: "masukkan email",
              hintStyle: TextStyle(color: Colors.blue),
              labelText: "Email",
              labelStyle: TextStyle(color: Color(0xff0b2447)) 
            ),
          ),
          TextFormField(
            obscureText: true,
            decoration: InputDecoration(
              focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.black)
              ),
              prefixIcon: Icon(Icons.lock, size: 25, color: Colors.black,),
              hintText: "masukkan password",
              hintStyle: TextStyle(color: Colors.blue),
              labelText: "Password",
              labelStyle: TextStyle(color: Color(0xff0b2447)) 
            ),
          ),

          SizedBox(height: 20,),
          Card(
            color: Color(0xff0b2447),
            elevation: 5,
            child: Container(
              height: 50,
              child: InkWell(
                splashColor: Color(0xfffcd900),
                onTap: (){},
                child: Center(
                  child: Text("Register", style:  TextStyle(fontSize: 20, color: Colors.white),
                  ),
                ),
              ),
             ),
          ),
          
           /*ElevatedButton(onPressed: (){Navigator.push(context,
          MaterialPageRoute(builder: (context)=>LogIn())
          );
          }, 
          child: Text("Back"))*/

          SizedBox(height: 20,width: 20,),
          Card(
            color: Colors.red,
            elevation: 5,
            child: Container(
              height: 50,
              child: InkWell(
                splashColor: Color.fromARGB(255, 239, 237, 227),
                onTap: (){
                  Navigator.push(context,
                  MaterialPageRoute(builder: (context)=>LogIn())
                  );
                },
                child: Center(
                  child: Text("Back", style:  TextStyle(fontSize: 20, color: Colors.white),
                  ),
                ),
              ),
             ),
          ),
        ],)
      ),
          )
    );
  }
}