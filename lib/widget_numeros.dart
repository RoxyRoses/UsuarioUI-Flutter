import 'package:flutter/material.dart';

class NumerosWidget extends StatelessWidget {
  const NumerosWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          construirBotao(text: 'Projetos', valor: 10),
          construirDivisor(),
          construirBotao(text: 'Seguindo', valor: 100),
          construirDivisor(),
          construirBotao(text: 'Seguidores', valor: 39000),
        ],
      );

  Widget construirDivisor() => Container(
        height: 24,
        child: VerticalDivider(),
      );

  Widget construirBotao({
    required String text,
    required int valor,
  }) =>
      MaterialButton(
        padding: EdgeInsets.symmetric(vertical: 4),
        onPressed: () {},
        materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Text(
              '$valor',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
            ),
            SizedBox(height: 2),
            Text(
              text,
              style: TextStyle(fontSize: 16),
            ),
          ],
        ),
      );
}
