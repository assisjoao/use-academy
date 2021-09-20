import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Perguntas e Respostas'),
        centerTitle: true,
      ),
      body: Center(
          child: Container(
            alignment: Alignment.center,
            color: Colors.blue[200],
            child: Container(
              height: 200,
              margin: const EdgeInsets.all(30.0),
              padding: const EdgeInsets.all(30.0),
              alignment: Alignment.topCenter,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(36.0),
                color: Colors.white,
              ),
              child: Column(
                crossAxisAlignment : CrossAxisAlignment.start,
	              // mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children:[
                  const Center (
                    child: Text(
                      'Perguntas e Respostas',
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                        color: Colors.blue,
                      ),
                    ),
                  ),
                  const Center (
                    child: Text(
                    'Responda 10 perguntas e veja sua pontuação no fim!',
                    style: TextStyle(
                      fontSize: 11,
                    ),
                  ),
                  ),
                  SizedBox (
                    width: double.infinity,
                    child: ElevatedButton(
                      style: ButtonStyle(
                        shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(16.0),
                          ),
                        ),
                      ),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => const Questions()),
                );
                      },
                      child: const Text(
                        'START',
                      textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                ],
              ),
            ),
        ),
      ),
    );
  }
}

class Questions extends StatelessWidget {
  const Questions({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Perguntas e Respostas'),
        centerTitle: true,
      ),
      body: SafeArea(
        child:  Column(
          children: [
            Container(
              alignment: Alignment.bottomLeft,
              margin: const EdgeInsets.all(16.0),
              child: const Text(
                'Qual é a altura do Cristo Redentor?',
                style: TextStyle(
                  fontSize: 20.0,
                ),
              ),
            ),
            Container(
              alignment: Alignment.bottomLeft,
              margin: const EdgeInsets.all(16.0),
              child: const Text(
                'Respostas',
                style: TextStyle(
                  fontSize: 20.0,
                  color: Colors.blue,
                ),
              ),
            ),
            Container(
              height: 100,
              margin: const EdgeInsets.all(16.0),
              alignment: Alignment.topCenter,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16.0),
                border: Border.all(color: Colors.grey),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

