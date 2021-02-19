import 'package:searchnews/model/post_details.dart';
import 'package:searchnews/model/search_query.dart';

abstract class BaseApi {
  Future<SearchQueryModel> searchApi({query});
  Future<PostDetailsModel> postDetailsApi({postId});
}
