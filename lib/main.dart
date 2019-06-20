import 'package:flutter/material.dart';

import 'package:buscador_giphy/ui/home_page.dart';

void main(){
  runApp(MaterialApp(
    title: "Buscador de Gifs",
    home: HomePage(),
    theme: ThemeData(
      hintColor: Colors.white,
    )
  ));
}

