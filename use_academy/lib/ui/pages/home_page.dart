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
              margin: const EdgeInsets.all(30),
              padding: const EdgeInsets.all(30),
              alignment: Alignment.topCenter,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(36),
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
                            borderRadius: BorderRadius.circular(16),
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
    );
  }
}

