import 'package:flutter/material.dart';
import 'package:searchnews/model/post_details.dart';
import 'package:searchnews/service/api.dart';
import '../locator.dart';

var conntapis = locator<Api>();

class PostDetails extends StatefulWidget {
  final String postId;
  PostDetails({Key key, @required this.postId}) : super(key: key);

  @override
  _PostDetailsState createState() => _PostDetailsState();
}

class _PostDetailsState extends State<PostDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Post Details'),
        centerTitle: true,
        elevation: 0,
      ),
      body: SingleChildScrollView(child: callApi(),),
    );
  }

  callApi() {
    return FutureBuilder<PostDetailsModel>(
        future: conntapis.postDetailsApi(postId: widget.postId),
        builder: (context, getinfoi) {
          switch (getinfoi.connectionState) {
            case ConnectionState.none:
              return Text('');
              break;
            case ConnectionState.waiting:
              return Center(
                child: CircularProgressIndicator(),
              );
              break;
            case ConnectionState.active:
              return Text('');
              break;
            case ConnectionState.done:
              if (getinfoi.hasError) {
                return Center(
                  child: Text('Error: $getinfoi',
                      style: TextStyle(
                          color: Colors.red, fontWeight: FontWeight.bold)),
                );
              } else if (getinfoi.hasData) {
                if (getinfoi.data == null) {
                  return Center(
                    child: Text(
                      'No result found',
                      style: TextStyle(
                          fontWeight: FontWeight.bold, color: Colors.red),
                    ),
                  );
                } else {
                  return postInfo(getinfoi.data);
                }
              } else {
                return Text('');
              }
              break;
          }
          return Text('');
        });
  }

  postInfo(PostDetailsModel data) {
    return Padding(
      padding: const EdgeInsets.all(12),
      child: Column(
        children: [
          Text('Title: ${data.title}', style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600)),
          Text('Points: ${data.points}'),
        ],
      ),
    );
  }
}
