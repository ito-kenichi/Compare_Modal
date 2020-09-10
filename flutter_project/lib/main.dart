import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            title: Text('Image Popup example')
        ),
        backgroundColor: Colors.grey[800],
        body: CircleAvatar(
            child: GestureDetector(
              onTap: () async {
                await showDialog(
                    context: context,
                    builder: (_) => ImageDialog()
                );
              },
            ),
            radius: 50.0,
            //Photo by Tamas Tuzes-Katai on Unsplash
            backgroundImage: AssetImage('assets/image001.jpg')
        )
    );
  }
}

class ImageDialog extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Dialog(
      child: Container(
        width: 200,
        height: 200,
        decoration: BoxDecoration(
            image: DecorationImage(
                image: ExactAssetImage('assets/image001.jpg'),
                fit: BoxFit.cover
            )
        ),
      ),
    );
  }
}
