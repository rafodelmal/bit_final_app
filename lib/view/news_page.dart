import 'package:flutter_app/presenter/build_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app/utils/controllerFirebase.dart' as firebaseController;

class NewsPage extends StatefulWidget {

  final String data;

  NewsPage({
    Key key,
    @required this.data,
  }) : super(key: key);

  @override
  _NewsPageState createState() => _NewsPageState();
}

class _NewsPageState extends State<NewsPage> {
  int ArticleInt = 1;

  String NameView = 'ArticleList';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        iconTheme: IconThemeData(color: Colors.grey),
        title: Text(
          'BIT News',
          style: TextStyle(color: Colors.black26),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 10),
            child: Icon(Icons.favorite),
          )
        ],
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
                child: CircleAvatar(
                  radius: 70,
                  backgroundColor: Colors.white,
                  child: Image.network(
                      'https://bit.institute/images/Instituto-Cursos-Programacion.png'),
                )),
            ListTile(
              title: Text('> Articles Tesla'),
              onTap: (){
                setState(() {
                  ArticleInt = 1;
                  NameView = 'ArticleList';
                });
              },
            ),
            Divider(),
            ListTile(
              title: Text('Sign Out', style: TextStyle(fontWeight: FontWeight.bold),),
              onTap: (){
                firebaseController.signOut(context: context);
              },
            )
          ],
        ),
      ),
      body: Container(
        padding: EdgeInsets.only(
          right: 10,
          left: 10
        ),
        child: BuildView(viewName: NameView, intArticle: ArticleInt),
      )
    );
  }
}
