import 'package:flutter/material.dart';
class Methods{
  static void navigationToNext(context,page){
    Navigator.of(context).push(new MaterialPageRoute(builder: (context)=>page));
  }
}