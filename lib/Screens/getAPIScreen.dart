import 'dart:convert';

import 'package:api_learning/Utilities/APIs.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
class LearningScreen extends StatefulWidget {
  const LearningScreen({Key key}) : super(key: key);

  @override
  _LearningScreenState createState() => _LearningScreenState();
}

class _LearningScreenState extends State<LearningScreen> {

  List posts;
  bool load = false;
  getPostMethod() async {
    http.Response  response= await http.get(APIs.baseURL +APIs.getPosts);
    if(response.statusCode == 200){
       posts= jsonDecode(response.body);
       setState(() {
         load=true;
       });
       print('Posts $posts');
    }
    else if(response.statusCode == 404)
    {
      print('page not found');
    }
    else {
      return null;
    }
  }


  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getPostMethod();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Hello"),

      ),
      body: Center(
        child: Text("h"),
      ),
    );
  }
}
