import 'package:flutter/material.dart';

class SecondPage extends StatelessWidget {
  SecondPage(this.name);
  final String name;

  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: const Center(
          child: Text("Second Page"),
        ),
      ),
      
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset('images/coffee.jpg'),
            Text(name,style: TextStyle(fontSize: 50),),
            ElevatedButton(
              onPressed: (){
                Navigator.pop(context);
              },
              child: Text("good!"),
            ),
          ],
        ),
      ),
    );
  }
}