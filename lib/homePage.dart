import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

import './itemList.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final api =
      "https://www.thecocktaildb.com/api/json/v1/1/filter.php?c=Cocktail";
  var res;
  var drinks;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    fetchData();
  }

  fetchData() async {
    res = await http.get(api);
    drinks = jsonDecode(res.body)["drinks"];
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [Colors.pink, Colors.orange],
        ),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          title: Text("Not Null", textAlign: TextAlign.center,),
          elevation: 0,
        ),
        body: Center(
          child:
              res != null ? CocktailList(drinks) : CircularProgressIndicator(),
        ),
      ),
    );
  }
}
