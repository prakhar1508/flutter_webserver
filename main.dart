import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

void main() {
  runApp(MyApp());
}

mydate() async {
  var url = "http://192.168.1.105/cgi-bin/date.py";
  var r = await http.get(url);
  //var sc = r.statusCode;
  var data = r.body;
  print(data);
  //print('press');
}

mycal() async {
  var url = "http://192.168.1.105/cgi-bin/cal.py";
  var r = await http.get(url);
  var data = r.body;
  print(data);
}

mybody() {
  return Column(
    children: <Widget>[
      RaisedButton(
        onPressed: mydate,
        child: Text('Click for date'),
      ),
      RaisedButton(
        onPressed: mycal,
        child: Text('Click for calendar'),
      ),
    ],
  );
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text('PMB'),
        ),
        body: mybody(),
      ),
    );
  }
}
