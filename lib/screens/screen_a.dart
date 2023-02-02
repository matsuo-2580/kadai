import 'package:flutter/material.dart';
import 'package:kadai_last/screens/screen_b.dart';
import 'package:kadai_last/screens/screen_c.dart';
import 'package:kadai_last/screens/screen_d.dart';

class ScreenA extends StatefulWidget {
  const ScreenA({Key? key}) : super(key: key);

  @override
  State<ScreenA> createState() => _ScreenAState();
}

class _ScreenAState extends State<ScreenA> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("選択肢"),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                onPressed: () {
                  Navigator.popUntil(context, (route) => route.isFirst);
                },
                child: Text("引き返す"),
              ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context){
                      return ScreenB();
                    }));
                  },
                  child: Text("1のトンネルに行きます"),
                ),
                ElevatedButton(
                  onPressed:() {
                    Navigator.push(context, MaterialPageRoute(builder: (context){
                      return ScreenC();
                    }));
                  },
                  child: Text("2のトンネルに行きます"),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context){
                      return ScreenD();
                    }));
                  },
                  child: Text("3のトンネルに行きます"),
                ),
                ElevatedButton(
                  onPressed:() {
                    Navigator.push(context, MaterialPageRoute(builder: (context){
                      return ScreenB();
                    }));
                  },
                  child: Text("4のトンネルに行きます"),
                ),
              ],
            )
          ],
        ));
  }
}
