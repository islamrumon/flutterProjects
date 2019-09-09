import 'package:clone_bbc_news/class/helper.dart' as prefix0;
import 'package:flutter/material.dart';
import 'package:clone_bbc_news/class/news.dart';
import 'package:clone_bbc_news/class/helper.dart';

class DataSearch extends SearchDelegate<news> {
  final newss = listOfNews;
//  final titlastyle = TextStyle(
//    fontFamily: 'bangla',
//    fontWeight: FontWeight.bold,
//    fontSize: 16,
//  );

  @override
  List<Widget> buildActions(BuildContext context) {
    // TODO: implement buildActions
    return [
      IconButton(
        icon: Icon(Icons.clear),
        onPressed: () {
          query = "";
        },
      )
    ];
  }

  @override
  Widget buildLeading(BuildContext context) {
    return IconButton(
      icon: AnimatedIcon(
        icon: AnimatedIcons.menu_arrow,
        progress: transitionAnimation,
      ),
      onPressed: () {
        close(context, null);
      },
    );
  }

  @override
  ThemeData appBarTheme(BuildContext context) {
    final ThemeData theme = Theme.of(context);
    return theme.copyWith(
      primaryColor: prefix0.primaryColor,
      primaryIconTheme: theme.primaryIconTheme,
      primaryColorBrightness: theme.primaryColorBrightness,
      primaryTextTheme: theme.primaryTextTheme,
    );
  }

  @override
  Widget buildResults(BuildContext context) {
    // TODO: implement buildResults
    return null;
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    //todo:the scarch bar , there add search abols topics
    final suggestionList = query.isEmpty
        ? newss
        : newss.where((p) => p.title.startsWith(query)).toList();
    return ListView.builder(
      itemBuilder: (context, index) => Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
//          Image.network(suggestionList[index].image.toString()),
            Container(
                height: 60,
                child: Image.network(
                  suggestionList[index].image.toString(),
                  height: 50,
                  width: 60,
                  fit: BoxFit.cover,
                )),
            SizedBox(
              width: 10,
            ),
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  RichText(
                    text: TextSpan(
                        text: suggestionList[index]
                            .title
                            .substring(0, query.length),
                        style: TextStyle(
                            color: Colors.black, fontWeight: FontWeight.bold),
                        children: [
                          TextSpan(
                              text: suggestionList[index]
                                  .title
                                  .substring(query.length),
                              style: TextStyle(color: Colors.grey))
                        ]),
                  ),
                  Row(
                    children: <Widget>[
                      suggestionList[index].time,
                      SizedBox(
                        width: 20,
                      ),
                      suggestionList[index].location,
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      itemCount: suggestionList.length,
    );
  }
}
