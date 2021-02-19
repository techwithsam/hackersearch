import 'dart:convert';
import 'package:searchnews/locator.dart';
import 'package:searchnews/model/post_details.dart';
import 'package:searchnews/model/search_query.dart';
import 'baseurl.dart';
import 'baseapi.dart';
import 'package:http/http.dart' as http;

var url = locator<BaseUrl>();

class Api extends BaseApi {
  @override
  Future<SearchQueryModel> searchApi({query}) async {
    var response = await http.get('${url.query}$query');
    print('${url.query}$query');

    var decode = json.decode(response.body);
    if (decode != null) {
      SearchQueryModel list = SearchQueryModel.fromJson(decode);
      return list;
    } else {
      return null;
    }
  }

  @override
  Future<PostDetailsModel> postDetailsApi({postId}) async {
    var response = await http.get('${url.details}$postId');
    print('${url.details}$postId');

    var decode = json.decode(response.body);
    if (decode != null) {
      PostDetailsModel list = PostDetailsModel.fromJson(decode);
      return list;
    } else {
      return null;
    }
  }
}
