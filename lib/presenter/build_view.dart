import 'package:flutter/material.dart';
import 'package:flutter_app/data/apiService.dart';
import 'package:flutter_app/presenter/build_itemList.dart';

class BuildView extends StatelessWidget {

  final String viewName;
  final int intArticle;

  BuildView({@required this.viewName, @required this.intArticle});

  @override
  Widget build(BuildContext context) {
    switch(viewName){
      case 'ArticleList':
        return Container(
          child: Center(
            child: Container(
              child: FutureBuilder(
                future: ApiService().GetDio(optionUrl: intArticle),
                builder: (context, snapshot){
                  if(snapshot.hasData){
                    return ListView.builder(
                      itemCount: (snapshot.data).articles.length,
                      itemBuilder: (BuildContext context, int index){
                        return buildItemList(
                            snapshotData: (snapshot.data).articles[index],
                        );
                      }
                    );
                  }else if(snapshot.hasError){
                    return Container();
                  }
                  return Center(
                    child: CircularProgressIndicator(),
                  );
                },
              ),
            ),
          ),
        );
      default:
        return Container();
    }


  }
}