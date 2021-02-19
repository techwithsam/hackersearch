import 'package:flutter/material.dart';
import 'search.dart';

class HomeScreen extends StatefulWidget {
  HomeScreen({Key key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  var _scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.only(left: 6, top: 12, right: 6),
            child: Column(
              children: [
                Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(25),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey[500].withOpacity(0.6),
                        offset: Offset(1.0, 1.0),
                        blurRadius: 6,
                      ),
                    ],
                  ),
                  child: TextFormField(
                    enabled: true,
                    keyboardType: TextInputType.text,
                    //autofocus: true,
                    onTap: () {
                      showSearch(context: context, delegate: DataSearch());
                    },
                    decoration: InputDecoration(
                      hintText: 'Search News',
                      contentPadding: EdgeInsets.fromLTRB(20, 10, 20, 10),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(38)),
                      enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.transparent)),
                      suffixIcon: Icon(
                        Icons.tune,
                        size: 24,
                      ),
                      prefixIcon: Icon(
                        Icons.search,
                        size: 24,
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 10),
                Row(
                  children: [
                    Text('Suggestions:', style: TextStyle(fontSize: 16)),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
