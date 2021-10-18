import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final double alturaCapa = 280;
  final double alturaImagem = 144;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          construirTopo(),
          construirConteudo(),
        ],
      ),
    );
  }

  Widget construirConteudo() {
    return Column(
      children: [
        Container(
          padding: EdgeInsets.symmetric(horizontal: 48),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Jennifer Sarah',
                style: TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.w600,
                ),
              ),
              const SizedBox(
                height: 16,
              ),
              Text(
                'C#, flutter programmer',
                style: TextStyle(fontSize: 18, height: 0.5),
              ),
              const SizedBox(
                height: 16,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  construirIconeSocial(FontAwesomeIcons.github),
                  const SizedBox(
                    width: 12,
                  ),
                  construirIconeSocial(FontAwesomeIcons.linkedin),
                  const SizedBox(
                    width: 12,
                  ),
                ],
              ),
              const SizedBox(
                height: 16,
              ),
              Divider(),
              const SizedBox(
                height: 16,
              ),
              //NumbersWidget(),
              Divider(),
            ],
          ),
        ),
        Container(
          padding: EdgeInsets.symmetric(horizontal: 48),
          child: Column(
            children: [
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Sobre',
                  style: TextStyle(
                    fontSize: 28,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'C#, flutter programmer, gamer and artist as hobby',
                  style: TextStyle(
                    fontSize: 18,
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }

  Widget construirIconeSocial(IconData icone) => CircleAvatar(
        radius: 25,
        child: Material(
          shape: CircleBorder(),
          clipBehavior: Clip.hardEdge,
          color: Colors.transparent,
          child: InkWell(
            onTap: () {},
            child: Center(
              child: Icon(
                icone,
                size: 32,
              ),
            ),
          ),
        ),
      );

  Widget construirTopo() {
    final topo = alturaCapa - alturaImagem / 2;
    final fundo = alturaImagem / 2;
    return Stack(
      clipBehavior: Clip.none,
      alignment: Alignment.center,
      children: [
        Container(
            margin: EdgeInsets.only(bottom: fundo),
            child: construirImagemCapa()),
        Positioned(top: topo, child: construirImagemPerfil()),
      ],
    );
  }

  Widget construirImagemCapa() => Container(
        color: Colors.grey,
        child: Image.network(
          'https://scontent.fbjp1-1.fna.fbcdn.net/v/t1.6435-9/245039835_4830011873689002_2476555330303027890_n.jpg?_nc_cat=108&ccb=1-5&_nc_sid=e3f864&_nc_eui2=AeGLxTNOFu6ByOsyuqNkzPasdxekpGR23Dx3F6SkZHbcPEvq68C9SFwTYVQIWlagK0i9hyOcRyosQeGhe12Pukgr&_nc_ohc=bhXEbr2SUzEAX8rtfJx&tn=N-BMJxp36pP_ffnP&_nc_ht=scontent.fbjp1-1.fna&oh=50f3da466b76847aceb2292fdf79cd22&oe=6192352E',
          width: double.infinity,
          height: alturaCapa,
          fit: BoxFit.cover,
        ),
      );

  Widget construirImagemPerfil() => CircleAvatar(
        radius: alturaImagem / 2,
        backgroundColor: Colors.grey.shade800,
        backgroundImage: NetworkImage(
            'https://avatars.githubusercontent.com/u/21040159?v=4'),
      );
}
