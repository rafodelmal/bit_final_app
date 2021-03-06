import 'package:flutter_app/model/news.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ArticleCard extends StatelessWidget {
  final Article article;

  ArticleCard({Key key, @required this.article}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 344,
      height: MediaQuery.of(context).size.height/1.72,
      margin: EdgeInsets.only(top: 15),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(10)),
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            blurRadius: 2,
            spreadRadius: 2,
            color: Colors.black12
          )
        ]
      ),
      child: Column(
        children: [
          Container(
            height: MediaQuery.of(context).size.height/4,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                topRight: Radius.circular(10),
                topLeft: Radius.circular(10)
              ),
              image: DecorationImage(
                fit: BoxFit.cover,
                image: article.urlToImage != null ? NetworkImage(article.urlToImage): AssetImage('assets/img/backbit.png')
              )
            ),
          ),
          Flexible(
            child: Container(
              padding: EdgeInsets.all(3),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    article.title ?? 'Title not found',
                    maxLines: 3,
                    style: GoogleFonts.signika(
                        fontSize: 20,
                        color: Colors.black,
                        fontWeight: FontWeight.bold
                    ),
                  ),
                  Text(
                    article.author ?? 'Autor not found',
                    style: GoogleFonts.signika(
                        fontSize: 14,
                        color: Colors.black12,
                        fontWeight: FontWeight.normal
                    ),
                  ),
                  Container(
                    height: 10,
                  ),
                  Text(
                    article.description ?? 'Description not found',
                    style: GoogleFonts.signika(
                        fontSize: 12,
                        color: Colors.black45,
                        fontWeight: FontWeight.normal
                    ),
                  ),
                ],
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.only(
              right: 13,
              left: 13
            ),
            child: Center(
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(
                      icon: Icon(Icons.favorite_border_outlined),
                      onPressed: (){

                      }),
                  InkWell(
                    onTap: (){

                    },
                    child:  Text(
                      'MORE >',
                      style: GoogleFonts.signika(
                          fontSize: 14,
                          color: Colors.blueAccent,
                          fontWeight: FontWeight.normal
                      ),
                    ),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}