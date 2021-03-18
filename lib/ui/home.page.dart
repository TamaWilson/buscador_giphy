import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  String _search;
  int _offset = 0;

  Future<Map> _getGifs() async {
    http.Response response;

    if(_search == null){
      response = await http.get(Uri.parse("https://api.giphy.com/v1/gifs/trending?api_key=cyU3lUeLG0Ck4uL8t0gnmal6NuPVXBsj&limit=20&rating=R"));
    } else {
    response = await http.get(Uri.parse("https://api.giphy.com/v1/gifs/search?api_key=cyU3lUeLG0Ck4uL8t0gnmal6NuPVXBsj&q=$_search&limit=20&offset=$_offSet&rating=R&lang=en"));
    }

    return json.decode(response.body);
  }

  @override
  void initState(){
    super.initState();
    _getGifs().then((value) => print(value));
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      
    );
  }
}