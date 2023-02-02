import "package:flutter/material.dart";
import 'package:kadai_last/screens/screen_a.dart';

void main() {
  runApp(
    MaterialApp(
      title: "Navi",
      home: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp ({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("脱出"),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            print("押されました");
            Navigator.push(context, MaterialPageRoute(builder: (context){
              return ScreenA();
            }));
          },
          child: Text("スタート"),
        )
      )
    );
  }
}
