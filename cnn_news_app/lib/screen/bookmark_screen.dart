import 'package:flutter/material.dart';
import 'package:cnn_news_app/helper/helper.dart';

class BookmarkScreen extends StatefulWidget {
  @override
  _BookmarkScreenState createState() => _BookmarkScreenState();
}

class _BookmarkScreenState extends State<BookmarkScreen> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: primaryColor,
        title: Center(
          child: Text("Saved Story",style: appbarTextStyle,),
        ),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
             Card(
               child: InkWell(
                 onTap: (){},
                 child: Row(
                   children: <Widget>[
                     Container(
                       padding: EdgeInsets.all(5.0),
                     width: size.width / 3,
                       child: Image.network('https://cbsnews1.cbsistatic.com/hub/i/r/2015/07/07/468fd9c4-7ba3-4d90-bbbc-c86fbae3fa78/resize/620x465/8e8d12b2cb0577290b78b4c61b3af7a4/gettyimages-472019514.jpg',
                       ),
                     ),
                     Container(
                       child: Expanded(
                         child: Padding(
                           padding: EdgeInsets.only(left:2.0),
                           child: Column(
                             children: <Widget>[
                               Text("The White House is frenetically throwing up road blocks in a belated strategy to slow the Democratic impeachment machine",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),),
                               Row(
                                 mainAxisAlignment: MainAxisAlignment.spaceAround,
                                 children: <Widget>[
                                   Text("Share on Sep 20,2090",style: TextStyle(fontSize: 11),),
                                   IconButton(
                                     onPressed: (){},
                                     icon: Icon(Icons.delete,color: Colors.black,),
                                   ),
                                   IconButton(
                                     onPressed: (){},
                                     icon: Icon(Icons.share,color: Colors.black,),
                                   ),
                                 ],
                               )
                             ],
                           ),
                         ),
                       ),
                     ),
                   ],
                 ),
               ),
             ),
              Card(
                child: InkWell(
                  onTap: (){},
                  child: Row(
                    children: <Widget>[
                      Container(
                        padding: EdgeInsets.all(5.0),
                        width: size.width / 3,
                        child: Image.network('https://cbsnews1.cbsistatic.com/hub/i/r/2015/07/07/468fd9c4-7ba3-4d90-bbbc-c86fbae3fa78/resize/620x465/8e8d12b2cb0577290b78b4c61b3af7a4/gettyimages-472019514.jpg',
                        ),
                      ),
                      Container(
                        child: Expanded(
                          child: Padding(
                            padding: EdgeInsets.only(left:2.0),
                            child: Column(
                              children: <Widget>[
                                Text("The White House is frenetically throwing up road blocks in a belated strategy to slow the Democratic impeachment machine",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                                  children: <Widget>[
                                    Text("Share on Sep 20,2090",style: TextStyle(fontSize: 11),),
                                    IconButton(
                                      onPressed: (){},
                                      icon: Icon(Icons.delete,color: Colors.black,),
                                    ),
                                    IconButton(
                                      onPressed: (){},
                                      icon: Icon(Icons.share,color: Colors.black,),
                                    ),
                                  ],
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Card(
                child: InkWell(
                  onTap: (){},
                  child: Row(
                    children: <Widget>[
                      Container(
                        padding: EdgeInsets.all(5.0),
                        width: size.width / 3,
                        child: Image.network('https://cbsnews1.cbsistatic.com/hub/i/r/2015/07/07/468fd9c4-7ba3-4d90-bbbc-c86fbae3fa78/resize/620x465/8e8d12b2cb0577290b78b4c61b3af7a4/gettyimages-472019514.jpg',
                        ),
                      ),
                      Container(
                        child: Expanded(
                          child: Padding(
                            padding: EdgeInsets.only(left:2.0),
                            child: Column(
                              children: <Widget>[
                                Text("The White House is frenetically throwing up road blocks in a belated strategy to slow the Democratic impeachment machine",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                                  children: <Widget>[
                                    Text("Share on Sep 20,2090",style: TextStyle(fontSize: 11),),
                                    IconButton(
                                      onPressed: (){},
                                      icon: Icon(Icons.delete,color: Colors.black,),
                                    ),
                                    IconButton(
                                      onPressed: (){},
                                      icon: Icon(Icons.share,color: Colors.black,),
                                    ),
                                  ],
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Card(
                child: InkWell(
                  onTap: (){},
                  child: Row(
                    children: <Widget>[
                      Container(
                        padding: EdgeInsets.all(5.0),
                        width: size.width / 3,
                        child: Image.network('https://cbsnews1.cbsistatic.com/hub/i/r/2015/07/07/468fd9c4-7ba3-4d90-bbbc-c86fbae3fa78/resize/620x465/8e8d12b2cb0577290b78b4c61b3af7a4/gettyimages-472019514.jpg',
                        ),
                      ),
                      Container(
                        child: Expanded(
                          child: Padding(
                            padding: EdgeInsets.only(left:2.0),
                            child: Column(
                              children: <Widget>[
                                Text("The White House is frenetically throwing up road blocks in a belated strategy to slow the Democratic impeachment machine",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                                  children: <Widget>[
                                    Text("Share on Sep 20,2090",style: TextStyle(fontSize: 11),),
                                    IconButton(
                                      onPressed: (){},
                                      icon: Icon(Icons.delete,color: Colors.black,),
                                    ),
                                    IconButton(
                                      onPressed: (){},
                                      icon: Icon(Icons.share,color: Colors.black,),
                                    ),
                                  ],
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Card(
                child: InkWell(
                  onTap: (){},
                  child: Row(
                    children: <Widget>[
                      Container(
                        padding: EdgeInsets.all(5.0),
                        width: size.width / 3,
                        child: Image.network('https://cbsnews1.cbsistatic.com/hub/i/r/2015/07/07/468fd9c4-7ba3-4d90-bbbc-c86fbae3fa78/resize/620x465/8e8d12b2cb0577290b78b4c61b3af7a4/gettyimages-472019514.jpg',
                        ),
                      ),
                      Container(
                        child: Expanded(
                          child: Padding(
                            padding: EdgeInsets.only(left:2.0),
                            child: Column(
                              children: <Widget>[
                                Text("The White House is frenetically throwing up road blocks in a belated strategy to slow the Democratic impeachment machine",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                                  children: <Widget>[
                                    Text("Share on Sep 20,2090",style: TextStyle(fontSize: 11),),
                                    IconButton(
                                      onPressed: (){},
                                      icon: Icon(Icons.delete,color: Colors.black,),
                                    ),
                                    IconButton(
                                      onPressed: (){},
                                      icon: Icon(Icons.share,color: Colors.black,),
                                    ),
                                  ],
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Card(
                child: InkWell(
                  onTap: (){},
                  child: Row(
                    children: <Widget>[
                      Container(
                        padding: EdgeInsets.all(5.0),
                        width: size.width / 3,
                        child: Image.network('https://cbsnews1.cbsistatic.com/hub/i/r/2015/07/07/468fd9c4-7ba3-4d90-bbbc-c86fbae3fa78/resize/620x465/8e8d12b2cb0577290b78b4c61b3af7a4/gettyimages-472019514.jpg',
                        ),
                      ),
                      Container(
                        child: Expanded(
                          child: Padding(
                            padding: EdgeInsets.only(left:2.0),
                            child: Column(
                              children: <Widget>[
                                Text("The White House is frenetically throwing up road blocks in a belated strategy to slow the Democratic impeachment machine",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                                  children: <Widget>[
                                    Text("Share on Sep 20,2090",style: TextStyle(fontSize: 11),),
                                    IconButton(
                                      onPressed: (){},
                                      icon: Icon(Icons.delete,color: Colors.black,),
                                    ),
                                    IconButton(
                                      onPressed: (){},
                                      icon: Icon(Icons.share,color: Colors.black,),
                                    ),
                                  ],
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),

              Center(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Container(
                      height: 300,
                      width: 300,
                      decoration: BoxDecoration(
                          color: Colors.grey,
                          shape: BoxShape.circle
                      ),
                      child: Icon(Icons.bookmark,size: 300,color: Colors.white,),
                    ),
                    Text("NO SaveStory found"),

                  ],
                ),
              ),
            ],
          ),
        ),

      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){},
        backgroundColor: primaryColor,
        child: Icon(Icons.delete,color: Colors.white,),
      ),
    );
  }
}
