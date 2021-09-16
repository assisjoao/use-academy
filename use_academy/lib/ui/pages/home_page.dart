import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SizedBox.expand(
          child: Column(
            children: [
              Expanded(
                child: Container(
                  color: Colors.green,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}