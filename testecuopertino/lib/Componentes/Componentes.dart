import 'package:flutter/material.dart';

class Componentes {
  static radionos(Text titulo, int value, int groupvalue, var val, int scoreNos) {
    return Container(
      width: 125,
      child: RadioListTile(
        title: titulo,
        value: value,
        groupValue: groupvalue,
        onChanged: (val) {
          scoreNos = value;
        },
      ),
    );
  }

  static radioeles(Text titulo, int value, int groupvalue, var val, int scoreNos) {
    return Container(
      width: 125,
      child: RadioListTile(
        title: titulo,
        value: value,
        groupValue: groupvalue,
        onChanged: (val) {
        },
      ),
    );
  }
}
