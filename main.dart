import 'package:flutter/material.dart';
import 'dart:convert';
import 'package:convert/convert.dart';
import 'package:crypto/crypto.dart' as crypto;

//ADD CRYPTO VERSION IN YAML FILE (crypto: 2.0.6)
void main(){
  runApp(new MaterialApp(home: MyApp()));
}
class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

generateMd5(String data) {
  var content = new Utf8Encoder().convert(data);
  var md5 = crypto.md5;
  var digest = md5.convert(content);
  return hex.encode(digest.bytes);
}
class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Encryption MD5"),
      ),
      body: new Text(generateMd5("Hello"),style: TextStyle(color: Colors.black,fontSize: 40.0),),
    );
  }
}