import 'package:flutter_app/model/news.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app/view/widgets/article_card.dart';

class buildItemList extends StatelessWidget{

  final Article snapshotData;

  buildItemList({Key key, @required this.snapshotData});

  @override
  Widget build(BuildContext context) {
    return ArticleCard(article: snapshotData,);
  }
}