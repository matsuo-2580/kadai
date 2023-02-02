import 'package:flutter/material.dart';
import 'package:kadai_last/screens/screen_a.dart';

class ScreenE extends StatefulWidget {
  const ScreenE({Key? key}) : super(key: key);

  @override
  State<ScreenE> createState() => _ScreenEState();
}

class _ScreenEState extends State<ScreenE> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("やっぱりダメだったよ"),
        ),
        body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children :[
                Text(
                  "最初に戻ってきた",
                  style : TextStyle(
                      fontSize: 20
                  ),
                ),
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context){
                      return ScreenA();
                    }));
                  },
                  child: Text("選び直しだよ、ほら"),
                ),
              ],
            )
        )
    );
  }
}
