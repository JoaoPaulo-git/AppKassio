import 'package:flutter/material.dart';


class JogarTruco extends StatefulWidget {
  @override
  _JogarTrucoState createState() => _JogarTrucoState();
}

class _JogarTrucoState extends State<JogarTruco> {
  // ignore: unused_element
  Future<void> _showMyDialog() async {
    return showDialog<void>(
      context: context,
      barrierDismissible: false, // user must tap button!
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Finalizar Jogo?'),
          content: SingleChildScrollView(
            child: ListBody(
              children: <Widget>[
                Text(''),
              ],
            ),
          ),
          actions: <Widget>[
            TextButton(
              child: Text('Finalizar'),
              onPressed: () {
                Navigator.pushNamed(context, '/');
              },
            ),
            TextButton(
              child: Text('Não finalizar'),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }

  Future<void> _showMyTeamNos() async {
    return showDialog<void>(
      context: context,
      barrierDismissible: false, // user must tap button!
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Nos botao'),
          content: SingleChildScrollView(
            child: ListBody(
              children: <Widget>[
                Text('Fulano - Ciclano'),
              ],
            ),
          ),
          actions: <Widget>[
            TextButton(
              child: Text('Ok'),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }

    Future<void> _showMyTeamEles() async {
    return showDialog<void>(
      context: context,
      barrierDismissible: false, // user must tap button!
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Nós'),
          content: SingleChildScrollView(
            child: ListBody(
              children: <Widget>[
                Text('Triclano - Quadriclano'),
              ],
            ),
          ),
          actions: <Widget>[
            TextButton(
              child: Text('Ok'),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }

  int selectedRadioNos;
  int selectedRadioEles;

  @override
  void initState() {
    super.initState();
    selectedRadioEles = 0;
    selectedRadioNos = 0;
  }

  setSelectedRadioEles(int val) {
    setState(() {
      selectedRadioEles = val;
    });
  }

  setSelectedRadioNos(int val) {
    setState(() {
      selectedRadioNos = val;
    });
  }

  int opEscolhidaNos;
  int opEscolhidaEles;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Stack(
        children: <Widget>[
          SizedBox(
            height: MediaQuery.of(context).size.height,
            child: Image.asset(
              'assets/images/background12.jpg',
              fit: BoxFit.cover,
            ),
          ),
          Container(
            color: Colors.black54,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: <Widget>[
                Container(),
                Padding(
                  padding: const EdgeInsets.fromLTRB(8.0, 8.0, 25.0, 110.0),
                  child: Column(
                    children: [
                      Radio(
                        value: 1,
                        groupValue: selectedRadioEles,
                        activeColor: Colors.purpleAccent,
                        onChanged: (val) {
                          setSelectedRadioEles(val);
                          opEscolhidaEles = val;
                        },
                      ),
                      Radio(
                        value: 2,
                        groupValue: selectedRadioEles,
                        activeColor: Colors.purpleAccent,
                        onChanged: (val) {
                          setSelectedRadioEles(val);
                          opEscolhidaEles = val;
                        },
                      ),
                      Radio(
                        value: 3,
                        groupValue: selectedRadioEles,
                        activeColor: Colors.purpleAccent,
                        onChanged: (val) {
                          setSelectedRadioEles(val);
                          opEscolhidaEles = val;
                        },
                      ),
                      Radio(
                        value: 4,
                        groupValue: selectedRadioEles,
                        activeColor: Colors.purpleAccent,
                        onChanged: (val) {
                          setSelectedRadioEles(val);
                          opEscolhidaEles = val;
                        },
                      ),
                      Radio(
                        value: 5,
                        groupValue: selectedRadioEles,
                        activeColor: Colors.purpleAccent,
                        onChanged: (val) {
                          setSelectedRadioEles(val);
                          opEscolhidaEles = val;
                        },
                      ),
                      Radio(
                        value: 6,
                        groupValue: selectedRadioEles,
                        activeColor: Colors.purpleAccent,
                        onChanged: (val) {
                          setSelectedRadioEles(val);
                          opEscolhidaEles = val;
                        },
                      ),
                      Radio(
                        value: 7,
                        groupValue: selectedRadioEles,
                        activeColor: Colors.purpleAccent,
                        onChanged: (val) {
                          setSelectedRadioEles(val);
                          opEscolhidaEles = val;
                        },
                      ),
                      Radio(
                        value: 8,
                        groupValue: selectedRadioEles,
                        activeColor: Colors.purpleAccent,
                        onChanged: (val) {
                          setSelectedRadioEles(val);
                          opEscolhidaEles = val;
                        },
                      ),
                      Radio(
                        value: 9,
                        groupValue: selectedRadioEles,
                        activeColor: Colors.purpleAccent,
                        onChanged: (val) {
                          setSelectedRadioEles(val);
                          opEscolhidaEles = val;
                        },
                      ),
                      Radio(
                        value: 10,
                        groupValue: selectedRadioEles,
                        activeColor: Colors.purpleAccent,
                        onChanged: (val) {
                          setSelectedRadioEles(val);
                          opEscolhidaEles = val;
                        },
                      ),
                      Radio(
                        value: 11,
                        groupValue: selectedRadioEles,
                        activeColor: Colors.purpleAccent,
                        onChanged: (val) {
                          setSelectedRadioEles(val);
                          opEscolhidaEles = val;
                        },
                      ),
                      Radio(
                        value: 12,
                        groupValue: selectedRadioEles,
                        activeColor: Colors.purpleAccent,
                        onChanged: (val) {
                          setSelectedRadioEles(val);
                          opEscolhidaEles = val;
                        },
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Container(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Container(),
                Padding(
                  padding: const EdgeInsets.fromLTRB(25.0, 8.0, 8.0, 110.0),
                  child: Column(
                    children: [
                      Radio(
                        value: 1,
                        groupValue: selectedRadioNos,
                        activeColor: Colors.orange,
                        onChanged: (val) {
                          setSelectedRadioNos(val);
                          opEscolhidaNos = val;
                        },
                      ),
                      Radio(
                        value: 2,
                        groupValue: selectedRadioNos,
                        activeColor: Colors.orange,
                        onChanged: (val) {
                          setSelectedRadioNos(val);
                          opEscolhidaNos = val;
                        },
                      ),
                      Radio(
                        value: 3,
                        groupValue: selectedRadioNos,
                        activeColor: Colors.orange,
                        onChanged: (val) {
                          setSelectedRadioNos(val);
                          opEscolhidaNos = val;
                        },
                      ),
                      Radio(
                        value: 4,
                        groupValue: selectedRadioNos,
                        activeColor: Colors.orange,
                        onChanged: (val) {
                          setSelectedRadioNos(val);
                          opEscolhidaNos = val;
                        },
                      ),
                      Radio(
                        value: 5,
                        groupValue: selectedRadioNos,
                        activeColor: Colors.orange,
                        onChanged: (val) {
                          setSelectedRadioNos(val);
                          opEscolhidaNos = val;
                        },
                      ),
                      Radio(
                        value: 6,
                        groupValue: selectedRadioNos,
                        activeColor: Colors.orange,
                        onChanged: (val) {
                          setSelectedRadioNos(val);
                          opEscolhidaNos = val;
                        },
                      ),
                      Radio(
                        value: 7,
                        groupValue: selectedRadioNos,
                        activeColor: Colors.orange,
                        onChanged: (val) {
                          setSelectedRadioNos(val);
                          opEscolhidaNos = val;
                        },
                      ),
                      Radio(
                        value: 8,
                        groupValue: selectedRadioNos,
                        activeColor: Colors.orange,
                        onChanged: (val) {
                          setSelectedRadioNos(val);
                          opEscolhidaNos = val;
                        },
                      ),
                      Radio(
                        value: 9,
                        groupValue: selectedRadioNos,
                        activeColor: Colors.orange,
                        onChanged: (val) {
                          setSelectedRadioNos(val);
                          opEscolhidaNos = val;
                        },
                      ),
                      Radio(
                        value: 10,
                        groupValue: selectedRadioNos,
                        activeColor: Colors.orange,
                        onChanged: (val) {
                          setSelectedRadioNos(val);
                          opEscolhidaNos = val;
                        },
                      ),
                      Radio(
                        value: 11,
                        groupValue: selectedRadioNos,
                        activeColor: Colors.orange,
                        onChanged: (val) {
                          setSelectedRadioNos(val);
                          opEscolhidaNos = val;
                        },
                      ),
                      Radio(
                        value: 12,
                        groupValue: selectedRadioNos,
                        activeColor: Colors.orange,
                        onChanged: (val) {
                          setSelectedRadioNos(val);
                          opEscolhidaNos = val;
                        },
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
         
          Container(
            //color: Colors.white24,
            height: 1000,
            width: 125,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Container(),
                Padding(
                  padding: const EdgeInsets.fromLTRB(35.0, 8.0, 8.0, 110.0),
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.fromLTRB(35.0, 8.0, 8.0, 24.0),
                        child: Text('1',
                        style: TextStyle(
                          color: Colors.white,
                          ),
                         ),
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(35.0, 8.0, 8.0, 24.0),
                        child: Text('2',
                        style: TextStyle(
                          color: Colors.white,
                          ),),
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(35.0, 8.0, 8.0, 24.0),
                        child: Text('3',
                        style: TextStyle(
                          color: Colors.white,
                          ),),
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(35.0, 8.0, 8.0, 24.0),
                        child: Text('4',
                        style: TextStyle(
                          color: Colors.white,
                          ),),
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(35.0, 8.0, 8.0, 24.0),
                        child: Text('5',
                        style: TextStyle(
                          color: Colors.white,
                          ),),
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(35.0, 8.0, 8.0, 24.0),
                        child: Text('6',
                        style: TextStyle(
                          color: Colors.white,
                          ),),
                      ), 
                      Padding(
                        padding: const EdgeInsets.fromLTRB(35.0, 8.0, 8.0, 24.0),
                        child: Text('7',
                        style: TextStyle(
                          color: Colors.white,
                          ),),
                      ),
                       Padding(
                        padding: const EdgeInsets.fromLTRB(35.0, 8.0, 8.0, 24.0),
                        child: Text('8',
                        style: TextStyle(
                          color: Colors.white,
                          ),),
                      ),
                     
                      Padding(
                        padding: const EdgeInsets.fromLTRB(35.0, 8.0, 8.0, 24.0),
                        child: Text('9',
                        style: TextStyle(
                          color: Colors.white,
                          ),),
                      ),
                     
                      Padding(
                        padding: const EdgeInsets.fromLTRB(35.0, 8.0, 8.0, 24.0),
                        child: Text('10',
                        style: TextStyle(
                          color: Colors.white,
                          ),),
                      ),
                     
                      Padding(
                        padding: const EdgeInsets.fromLTRB(35.0, 8.0, 8.0, 24.0),
                        child: Text('11',
                        style: TextStyle(
                          color: Colors.white,
                          ),),
                      ),
                     
                      Padding(
                        padding: const EdgeInsets.fromLTRB(35.0, 8.0, 8.0, 16.0),
                        child: Text('12',
                        style: TextStyle(
                          color: Colors.white,
                          ),),
                      ),
                     
                    ],
                  ),
                ),
              ],
            ),
          ),
         
          Container(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: <Widget>[
                Container(),
                Padding(
                  padding: const EdgeInsets.fromLTRB(35.0, 8.0, 60.0, 110.0),
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.fromLTRB(35.0, 8.0, 8.0, 24.0),
                        child: Text('1',
                        style: TextStyle(
                          color: Colors.white,
                          ),),
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(35.0, 8.0, 8.0, 24.0),
                        child: Text('2',
                        style: TextStyle(
                          color: Colors.white,
                          ),),
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(35.0, 8.0, 8.0, 24.0),
                        child: Text('3',
                        style: TextStyle(
                          color: Colors.white,
                          ),),
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(35.0, 8.0, 8.0, 24.0),
                        child: Text('4',
                        style: TextStyle(
                          color: Colors.white,
                          ),),
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(35.0, 8.0, 8.0, 24.0),
                        child: Text('5',
                        style: TextStyle(
                          color: Colors.white,
                          ),),
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(35.0, 8.0, 8.0, 24.0),
                        child: Text('6',
                        style: TextStyle(
                          color: Colors.white,
                          ),),
                      ), 
                      Padding(
                        padding: const EdgeInsets.fromLTRB(35.0, 8.0, 8.0, 24.0),
                        child: Text('7',
                        style: TextStyle(
                          color: Colors.white,
                          ),),
                      ),
                       Padding(
                        padding: const EdgeInsets.fromLTRB(35.0, 8.0, 8.0, 24.0),
                        child: Text('8',
                        style: TextStyle(
                          color: Colors.white,
                          ),),
                      ),
                     
                      Padding(
                        padding: const EdgeInsets.fromLTRB(35.0, 8.0, 8.0, 24.0),
                        child: Text('9',
                        style: TextStyle(
                          color: Colors.white,
                          ),),
                      ),
                     
                      Padding(
                        padding: const EdgeInsets.fromLTRB(35.0, 8.0, 8.0, 24.0),
                        child: Text('10',
                        style: TextStyle(
                          color: Colors.white,
                          ),),
                      ),
                     
                      Padding(
                        padding: const EdgeInsets.fromLTRB(35.0, 8.0, 8.0, 24.0),
                        child: Text('11',
                        style: TextStyle(
                          color: Colors.white,
                          ),),
                      ),
                     
                      Padding(
                        padding: const EdgeInsets.fromLTRB(35.0, 8.0, 8.0, 16.0),
                        child: Text('12',
                        style: TextStyle(
                          color: Colors.white,
                          ),),
                      ),
                     
                    ],
                  ),
                ),
              ],
            ),
          ),
          

          Container(
            child: Center(
              child: Padding(
                padding: const EdgeInsets.fromLTRB(8.0, 35.0, 8.0, 3.0),
                child: Container(
                  alignment: Alignment.topCenter,
                  child: Row(
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: RaisedButton(
                              onPressed: (){
                                _showMyTeamNos();
                              },
                              shape: StadiumBorder(),
                              textColor: Colors.white,
                              padding: const EdgeInsets.all(0.0),
                              child: Container (
                                  decoration: BoxDecoration(
                                    border: Border.all(
                                      color: Color(0xFFFFFFFF),
                                      style: BorderStyle.solid,
                                      width: 1.0,
                                    ),
                                    color: Colors.black,
                                    borderRadius: BorderRadius.circular(10.0),
                                  ),
                                padding:  const EdgeInsets.all(10.0),
                                child:

                                  const Text('   Nós   ', style: TextStyle(fontSize: 20),)
                              ),
                            ),
                      ),
                      SizedBox(
                        width: 120,
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(35.0, 8.0, 8.0, 8.0),
                        child: RaisedButton(
                              onPressed: (){
                                _showMyTeamEles();
                              },
                              shape: StadiumBorder(),
                              textColor: Colors.white,
                              padding: const EdgeInsets.all(0.0),
                              child: Container (
                                  decoration: BoxDecoration(
                                    border: Border.all(
                                      color: Color(0xFFFFFFFF),
                                      style: BorderStyle.solid,
                                      width: 1.0,
                ),
                color: Colors.black,
                borderRadius: BorderRadius.circular(10.0),
              ),
            padding:  const EdgeInsets.all(10.0),
            child:

              const Text('    Eles    ', style: TextStyle(fontSize: 20),)
          ),
        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
          Container(
            child: Center(
              child: Container(
                padding: EdgeInsets.only(bottom: 105),
                height: MediaQuery.of(context)
                    .size
                    .height, // alinhamento do botão no fundo da tela
                alignment: Alignment.bottomCenter,
                child: RaisedButton(
                  onPressed: (){
                    _showMyDialog();
                  },
                  shape: StadiumBorder(),
                  textColor: Colors.white,
                  padding: const EdgeInsets.all(0.0),
                    child: Container (
                          decoration: BoxDecoration(
                          border: Border.all(
                          color: Color(0xFFFFFFFF),
                          style: BorderStyle.solid,
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
            ),
          ),
          Container(
            // btão finalizar
            child: Center(
              child: Container(
                  margin: EdgeInsets.only(bottom: 420),
                  height: MediaQuery.of(context)
                      .size
                      .height, // alinhamento do botão no centro da tela
                  alignment: Alignment.center,
                  child: Text(
                    'Nós: $opEscolhidaNos',
                    style: TextStyle(
                      fontFamily: 'Casino',
                      fontSize: 25,
                      color: Colors.white,
                    ),
                  )),
            ),
          ),
          Container(
            // btão finalizar
            child: Center(
              child: Container(
                margin: EdgeInsets.only(bottom: 350),
                height: MediaQuery.of(context)
                    .size
                    .height, // alinhamento do botão no centro da tela
                alignment: Alignment.center,
                child: Text(
                  'Eles: $opEscolhidaEles',
                  style: TextStyle(
                    fontFamily: 'NanumGothic',
                    fontSize: 25,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
