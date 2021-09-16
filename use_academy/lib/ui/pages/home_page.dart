import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          color: Colors.blue,
          ),
          child: ConstrainedBox(
            constraints: const BoxConstraints(maxHeight: 200,
            minHeight: 200,),
            child: Column(
              children: [
                Text("Teste"),
              ],
            ),
          ),
            
      ),
    );
  }
}