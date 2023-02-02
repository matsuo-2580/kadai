import 'package:flutter/material.dart';
import 'package:kadai_last/screens/Screen_e.dart';
import 'package:kadai_last/screens/screen_a.dart';
import 'package:kadai_last/screens/screen_c.dart';

class ScreenB extends StatefulWidget {
  const ScreenB({Key? key}) : super(key: key);

  @override
  State<ScreenB> createState() => _ScreenBState();
}

class _ScreenBState extends State<ScreenB> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("行き止まり"),
        ),
        body: Center(
          child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
                 ElevatedButton(
                   onPressed: () {
                     Navigator.pop(context);
                   },
                   child: Text("最初に戻る"),
                 ),
                 ElevatedButton(
                   child: Text("穴を掘る"),
                   onPressed: () {
                     showDialog<void>(
                         context: context,
                         builder: (_) {
                           return AlertDialogSample();
                         });
                   })
          ],
                 ),
            ),
        );
  }
}
class AlertDialogSample extends StatelessWidget {
  const AlertDialogSample({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Text('本当に掘るんですか？'),
      content: Text('後悔しませんね？'),
      actions: <Widget>[
        GestureDetector(
          child: Text('いいえ'),
          onTap: () {
            Navigator.pop(context);
          },
        ),
        GestureDetector(
          child: Text('はい'),
          onTap: () {
            Navigator.push(context, MaterialPageRoute(builder: (context){
              return ScreenE();
            }));
          },
        )
      ],
    );
  }
}

