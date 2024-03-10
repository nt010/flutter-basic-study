import 'package:flutter/material.dart';

import 'second_page.dart';

class FirstPage extends StatelessWidget {
  String nameText = '';

  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: const Center(
          child: Text("First Page"),
        ),
      ),
      
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextField(
                onChanged: (text) {
                  nameText = text;
                },
                //obscureText: true,
                decoration: InputDecoration(
                  labelText: 'Enter your name',
                  border: OutlineInputBorder(),
                ),
              ),
              ElevatedButton(
                onPressed: (){
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => SecondPage(nameText),
                    ),
                  );
                },
              child: const Text("Next Page"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}