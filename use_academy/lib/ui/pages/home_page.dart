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
              const FirstContainer(),
              Expanded(
                child:Container(color: Colors.green[100]),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class FirstContainer extends StatelessWidget {
  const FirstContainer({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child:Container(color: Colors.blue[100]),
    );
  }
}