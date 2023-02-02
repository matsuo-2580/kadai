import 'package:flutter/material.dart';

class ScreenD extends StatefulWidget {
  const ScreenD({Key? key}) : super(key: key);

  @override
  State<ScreenD> createState() => _ScreenDState();
}

class _ScreenDState extends State<ScreenD> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("出口2"),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
          children :[
          Text(
              "脱出成功！",
                  style : TextStyle(
            fontSize: 20
        ),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.popUntil(context, (route) => route.isFirst);
              },
              child: Text("最初に戻ります"),
            ),
          ],
          )
        )
    );
  }
}
