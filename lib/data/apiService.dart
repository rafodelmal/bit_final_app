import 'package:flutter/cupertino.dart';
import 'package:dio/dio.dart';
import 'package:flutter_app/model/news.dart';

class ApiService{
    String UrlForApi(optionUrl){
      switch(optionUrl){
        case 1:
          return 'https://newsapi.org/v2/everything?q=tesla&from=2021-02-25&sortBy=publishedAt&apiKey=64c32a49e1df4baa8f23a70a562e3c0c';
        case 2:
          return 'https://newsapi.org/v2/top-headlines?country=us&category=business&apiKey=64c32a49e1df4baa8f23a70a562e3c0c';
        case 3:
          return 'https://newsapi.org/v2/everything?q=apple&from=2021-02-11&to=2021-02-11&sortBy=popularity&apiKey=64c32a49e1df4baa8f23a70a562e3c0c';
        case 4:
          return 'https://newsapi.org/v2/top-headlines?sources=techcrunch&apiKey=64c32a49e1df4baa8f23a70a562e3c0c';
        default:
          return 'https://newsapi.org/v2/everything?domains=wsj.com&apiKey=64c32a49e1df4baa8f23a70a562e3c0c';
      }
    }

    GetDio({@required int optionUrl}) async {
      print('GetDio');
      var dio = Dio();
      Response response = await dio.get(UrlForApi(optionUrl));
      if(response.statusCode == 200){
        print('Ok');
        return ArticleApiModel.fromJson(response.data);
      }else{
        print('Algo ha salido mal');
      }
    }
}