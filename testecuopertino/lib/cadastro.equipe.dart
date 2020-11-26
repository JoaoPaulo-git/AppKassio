import 'package:flutter/material.dart';

class CadastroEquipe extends StatefulWidget {
  @override
  _CadastroEquipeState createState() => _CadastroEquipeState();
}

class _CadastroEquipeState extends State<CadastroEquipe> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          SizedBox(
            height: MediaQuery.of(context).size.height,
            child: Image.asset(
              'assets/images/background10.jpg',
              fit: BoxFit.cover,
            ),
          ),
          Center(
            child: Container(
              color: Colors.grey.withOpacity(0.6),
              height: 380,
              padding: EdgeInsets.only(left: 5),
            ),
          ),
          Center(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  TextField(
                    decoration: InputDecoration(
                      labelText: 'Nome da Dupla',
                      border: OutlineInputBorder(),
                      labelStyle:
                          TextStyle(fontSize: 20, color: Colors.black87),
                    ),
                  ),
                  SizedBox(height: 25),
                  TextField(
                    decoration: InputDecoration(
                      labelText: 'Jogador(a) - Dupla - 1',
                      labelStyle:
                          TextStyle(fontSize: 20, color: Colors.black87),
                      border: OutlineInputBorder(),
                    ),
                    style: TextStyle(
                      color: Colors.black,
                    ),
                  ),
                  SizedBox(height: 25),
                  TextField(
                    decoration: InputDecoration(
                        labelText: 'Jogador(a) - Dupla - 1',
                        labelStyle:
                            TextStyle(fontSize: 20, color: Colors.black87),
                        border: OutlineInputBorder()),
                  ),
                  SizedBox(height: 30),
                  Container(
                    child: Center(
                      child: RaisedButton(
                          onPressed: (){
                            Navigator.pushNamed(context, '/cadastro2');
                          },
                          shape: StadiumBorder(),
                          textColor: Colors.white,
                          padding: const EdgeInsets.all(0.0),
                          child: Container (
                              decoration: BoxDecoration(
                                border: Border.all(
                                  color: Color(0xFFFFFFFF),
                                  style: BorderStyle.none,
                                  width: 1.0,
                                ),
                                color: Colors.black,
                                borderRadius: BorderRadius.circular(10.0),
                              ),
                            padding:  const EdgeInsets.all(10.0),
                            child:

                              const Text('Próximo', style: TextStyle(fontSize: 20),)
                          ),
                        ),
                    ),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}

class CadastroEquipe2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          SizedBox(
            height: MediaQuery.of(context).size.height,
            child: Image.asset(
              'assets/images/background10.jpg',
              fit: BoxFit.cover,
            ),
          ),
          Center(
            child: Container(
              color: Colors.grey.withOpacity(0.6),
              height: 380,
              padding: EdgeInsets.only(left: 5),
            ),
          ),
          Center(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  TextField(
                    decoration: InputDecoration(
                      labelText: 'Nome da Dupla',
                      border: OutlineInputBorder(),
                      labelStyle:
                          TextStyle(fontSize: 20, color: Colors.black87),
                    ),
                  ),
                  SizedBox(height: 25),
                  TextField(
                    decoration: InputDecoration(
                      labelText: 'Jogador(a) - Dupla - 2',
                      labelStyle:
                          TextStyle(fontSize: 20, color: Colors.black87),
                      border: OutlineInputBorder(),
                    ),
                    style: TextStyle(
                      color: Colors.black,
                    ),
                  ),
                  SizedBox(height: 25),
                  TextField(
                    decoration: InputDecoration(
                        labelText: 'Jogador(a) - Dupla - 2',
                        labelStyle:
                            TextStyle(fontSize: 20, color: Colors.black87),
                        border: OutlineInputBorder()),
                  ),
                  SizedBox(height: 30),
                  Container(
                    child: Center(
                      child: RaisedButton(
                          onPressed: (){
                            Navigator.pushNamed(context, '/jogartruco');
                          },
                          shape: StadiumBorder(),
                          textColor: Colors.white,
                          padding: const EdgeInsets.all(0.0),
                          child: Container (
                              decoration: BoxDecoration(
                                border: Border.all(
                                  color: Color(0xFFFFFFFF),
                                  style: BorderStyle.none,
                                  width: 1.0,
                                ),
                                color: Colors.black,
                                borderRadius: BorderRadius.circular(10.0),
                              ),
                            padding:  const EdgeInsets.all(10.0),
                            child:

                              const Text('Finalizar', style: TextStyle(fontSize: 20),)
                          ),
                        ),
                    ),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
