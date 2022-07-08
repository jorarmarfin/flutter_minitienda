import 'package:flutter/material.dart';
//import 'package:google_fonts/google_fonts.dart';

//Colores
const colorPrincipal = Colors.purple;
const colorNaranja = Color(0xffFF9A3B);

//Imagenes
const imgLoading = 'assets/images/jar-loading.gif';

//Iconos
// const icoNosotros = 'assets/icons/about.png';

//Estilo de textos
const StyleNombreProducto =
    TextStyle(color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold);
const StylePrecioProducto = TextStyle(
  color: Colors.white,
);

class DefaultTheme {
  static ThemeData base = ThemeData.light().copyWith(
      primaryColor: colorPrincipal,
      appBarTheme: const AppBarTheme(color: colorPrincipal),
      textTheme: const TextTheme(
        bodyText2: TextStyle(color: Colors.black),
      ),
      floatingActionButtonTheme:
          const FloatingActionButtonThemeData(backgroundColor: colorPrincipal));
}

BoxDecoration fondoScreen(String fondo) {
  return BoxDecoration(
    image: DecorationImage(image: AssetImage(fondo), fit: BoxFit.fill),
  );
}

BoxDecoration boxBoton(color) {
  return BoxDecoration(
    color: color,
    border: Border.all(color: Colors.white, width: 2.5),
    borderRadius: BorderRadius.circular(20),
  );
}

BoxDecoration boxRecuadro(color, double radio) {
  return BoxDecoration(
    color: color,
    borderRadius: BorderRadius.circular(radio),
  );
}

BoxDecoration boxRecuadroOnly(
    color, double arribaI, double arribaD, double abajoI, double abajoD) {
  return BoxDecoration(
    color: color,
    borderRadius: BorderRadius.only(
        topLeft: Radius.circular(arribaI),
        topRight: Radius.circular(arribaD),
        bottomLeft: Radius.circular(abajoI),
        bottomRight: Radius.circular(abajoD)),
  );
}

BoxDecoration boxRecuadroSombra(color, double radio) {
  return BoxDecoration(
      color: color,
      borderRadius: BorderRadius.circular(radio),
      boxShadow: [
        BoxShadow(color: Colors.black12, offset: Offset(0, 5), blurRadius: 5)
      ]);
}
//bodyLarge
//bodyMedium
//bodySmall
//bodyText1
//bodyText2
//button
//caption
//displayLarge
//displayMedium
//displaySmall
//hashCode
//headline1
//headline2
//headline3
//headline4
//headline5
//headline6
//headlineLarge
//headlineMedium
//headlineSmall
//labelLarge
//labelMedium
//labelSmall
//overline
//subtitle1
//subtitle2
//titleLarge
//titleMedium
//titleSmall