import 'package:flutter/material.dart';

class BasicoPage extends StatelessWidget {
  final estiloTitulo =
      const TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold);
  final estiloSubTitulo = const TextStyle(fontSize: 18.0, color: Colors.grey);

  const BasicoPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            _crearImagen(context),
            _crearTitulo(),
            _crearAcciones(),
            _crearTexto(),
            _crearTexto(),
            _crearTexto(),
            _crearTexto(),
            _crearTexto(),
            _crearTexto(),
            _crearTexto(),
          ],
        ),
      ),
    );
  }

  Widget _crearImagen(BuildContext context) {
    return Image.network(
      'https://d138zd1ktt9iqe.cloudfront.net/media/seo_landing_files/file-istockphoto-859550894-170667a-1600430313.jpg',
      height: MediaQuery.of(context).size.height * 0.40,
      width: double.infinity, //maxfinity
      fit: BoxFit.cover,
    );
  }

  Widget _crearTitulo() {
    return SafeArea(
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 30.0, vertical: 0.0),
        child: Row(
          children: [
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    'Gota a Gota',
                    style: estiloTitulo,
                  ),
                  const SizedBox(
                    height: 7.0,
                  ),
                  Text(
                    'en un gran mirror',
                    style: estiloSubTitulo,
                  ),
                ],
              ),
            ),
            const Icon(
              Icons.star,
              color: Colors.red,
              size: 30.0,
            ),
            const Text(
              '41',
              style: TextStyle(fontSize: 20.0),
            ),
          ],
        ),
      ),
    );
  }

  Widget _crearAcciones() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        _accion(Icons.call, 'CALL'),
        _accion(Icons.near_me, 'ROUTE'),
        _accion(Icons.share, 'SHARE'),
      ],
    );
  }

  Widget _accion(IconData icon, String texto) {
    return Column(
      children: <Widget>[
        Icon(
          icon,
          color: Colors.blue,
          size: 40.0,
        ),
        const SizedBox(
          height: 5.0,
        ),
        Text(
          texto,
          style: const TextStyle(fontSize: 15.0, color: Colors.blue),
        ),
      ],
    );
  }

  Widget _crearTexto() {
    return SafeArea(
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 40.0, vertical: 20.0),
        child: const Text(
          'dddddddddddddddddddddddddd '
          ' dddddddddddddddddddddddddddddddddddddddddd'
          'ddddddddddddddddddddddddddddddddddddddd'
          'dddddddddddddddddddddddddddddddddddddd'
          'ddddddddddddddddddddddddddd'
          'ddddddddddddddddddddd',
          textAlign: TextAlign.justify,
        ),
      ),
    );
  }
}
