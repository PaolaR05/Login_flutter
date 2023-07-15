import 'package:flutter/material.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('WELCOME',
          style: TextStyle(color: Colors.white),),
      ),
  
      body: const Center(
        child: Text('Hola Paola',
          style: TextStyle(
            fontSize: 35,
            color: Colors.purpleAccent,
            fontStyle: FontStyle.italic,fontWeight: FontWeight.bold,
          ),),
          
      ),
    );
  }
}