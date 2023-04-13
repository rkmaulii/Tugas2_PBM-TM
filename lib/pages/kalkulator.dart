import 'package:flutter/material.dart';

void main() {
  runApp(const BMI());
}


class BMI extends StatelessWidget {
  const BMI({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
      appBar: AppBar(title: Text("Nama pengguna",),
      
      )

      ,

      body: Container(
        padding: const EdgeInsets.all(8),
        color: Color(0xfffee2c5),
        child: Column(mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
          Container(
            width: 100,
            height: 100,
            decoration: BoxDecoration(
              color: Colors.white,
              shape: BoxShape.circle
            ),
            child: Center(
              child: Icon(Icons.person, size: 80, color:  Colors.black,),
            ),
          ),

          SizedBox(height: 20,),
          Text("Anda dapat menghitung berat badan ideal disini", style:TextStyle(fontSize: 25, color: Colors.white),),
          Text("Lengkapi data diri dibawah ini", style:TextStyle(fontSize: 18, color: Colors.white),),
          SizedBox(height: 20,),
          TextFormField(
            decoration: InputDecoration(
              focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.black)
              ),
              prefixIcon: Icon(Icons.person, size: 25),
              hintText: "masukkan berat badan anda dalam kilogram",
              hintStyle: TextStyle(color: Colors.blue),
              labelText: "Berat Badan",
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
              hintText: "masukkan tinggi badan anda dalam centimeter",
              hintStyle: TextStyle(color: Colors.blue),
              labelText: "Tinggi badan",
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
                onTap: (){},
                child: Center(
                  child: Text("Kirim", style:  TextStyle(fontSize: 20, color: Colors.white),
                  ),
                ),
              ),
             ),
          ),
          
          SizedBox(height: 20,width: 20,),
          Card(
            color: Colors.red,
            elevation: 5,
            child: Container(
              height: 50,
              child: InkWell(
                splashColor: Color.fromARGB(255, 239, 237, 227),
                onTap: (){},
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