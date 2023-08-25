
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}



class MyApp extends StatelessWidget {
  const MyApp({super.key});


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Contador de Pessoas',
      theme: ThemeData(
       
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true ,
      ),
      home: const Contador(),
    );
  }
}
class Contador extends StatefulWidget {
  const Contador({super.key});

  @override
  State<Contador> createState() => _ContadorState();
}

class _ContadorState extends State<Contador> {

  int count = 0;

  void decrement(){
    setState(() {
      if (count > 0){
      count--;
      }
    });
    print(count);
  }

  void increment(){
    setState(() {
      if (count < 30){
      count++;
      }
    });
    print(count);
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold (
      backgroundColor: Colors.red,
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage("imagem/restaurant.png"), 
            fit:  BoxFit.cover
            )
        ),
        child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text(
            "Pode entrar", 
            style: TextStyle(fontSize: 30.0, color: Colors.white),
          ),
         Padding(
          padding: EdgeInsets.all(40),
          child: 
            Text(count.toString(),
            style: const TextStyle(fontSize: 100, color: Colors.white)),
          ),
          
        
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
            TextButton(
              onPressed: decrement,
              style: TextButton.styleFrom(
                backgroundColor: Colors.white,
                fixedSize: Size(100, 100),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(24)
                )
              ),
              child: Text("Saiu", style: TextStyle(fontSize: 16, color: Colors.pink)),
            ),
            
            SizedBox(width: 64,),

              TextButton(
              onPressed: increment,
              style: TextButton.styleFrom(
                backgroundColor: Colors.white,
                fixedSize: Size(100, 100),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(24)
                )
              ),
              child: Text("Entrou", style: TextStyle(fontSize: 16, color: Colors.pink)),
          )],
      ),
  ])));
  }
}
