import 'package:flutter/material.dart';
import 'package:flutter_minitienda/themes/default_theme.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);
  static String routerName = 'home';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Producto'),
        centerTitle: true,
      ),
      floatingActionButton:
          FloatingActionButton(child: const Icon(Icons.add), onPressed: () {}),
      body: ListView.builder(
        itemCount: 7,
        itemBuilder: (BuildContext context, int index) {
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Container(
              margin: EdgeInsets.only(top: 30, bottom: 50),
              height: 400,
              decoration: boxRecuadroSombra(Colors.white, 15.0),
              child: Stack(
                alignment: Alignment.bottomLeft,
                children: [
                  _Imagen(),
                  _NombreProducto(),
                  _PrecioProducto(),
                  Positioned(
                    top: 0,
                    left: 0,
                    child: Container(
                      width: 100,
                      height: 50,
                      decoration: boxRecuadroOnly(Colors.orange, 15, 0, 0, 15),
                      child: const FittedBox(
                        fit: BoxFit.contain,
                        child: Padding(
                          padding: EdgeInsets.all(10.0),
                          child: Text(
                            'No Disponible              ',
                            style: StylePrecioProducto,
                          ),
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}

class _PrecioProducto extends StatelessWidget {
  const _PrecioProducto({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: 0,
      right: 0,
      child: Container(
        width: 100,
        height: 50,
        decoration: boxRecuadroOnly(Colors.indigo, 0, 15, 15, 0),
        child: const FittedBox(
          fit: BoxFit.contain,
          child: Padding(
            padding: EdgeInsets.all(10.0),
            child: Text(
              'S/. 321,321.321',
              style: StylePrecioProducto,
            ),
          ),
        ),
      ),
    );
  }
}

class _NombreProducto extends StatelessWidget {
  const _NombreProducto({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 50),
      child: Container(
        width: double.infinity,
        padding: EdgeInsets.all(8.0),
        height: 70,
        decoration: boxRecuadroOnly(colorPrincipal, 0, 15, 15, 0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'Disco Duro',
              style: StyleNombreProducto,
            )
          ],
        ),
      ),
    );
  }
}

class _Imagen extends StatelessWidget {
  const _Imagen({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 400,
      child: FadeInImage(
          fit: BoxFit.cover,
          placeholder: AssetImage(imgLoading),
          image: NetworkImage('https://via.placeholder.com/400x300/f6f6f6')),
    );
  }
}
