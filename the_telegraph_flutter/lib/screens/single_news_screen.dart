import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:the_telegraph_flutter/helper/helper.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:the_telegraph_flutter/screens/modal_screen.dart';
import 'package:the_telegraph_flutter/screens/register_screen.dart';
import 'package:the_telegraph_flutter/screens/user_modal_screen.dart';

class SingleNewsScreen extends StatefulWidget {
  @override
  _SingleNewsScreenState createState() => _SingleNewsScreenState();
}

class _SingleNewsScreenState extends State<SingleNewsScreen> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: Text("Top Story",style: drawerTextStyle,),
        backgroundColor: primaryColor4Gold,
        actions: <Widget>[
          IconButton(
            onPressed: (){
              showModalBottomSheet(context: context, builder: (context)=>UserModalScreen());
            },
            icon: Icon(Icons.add_circle_outline),
          ),
          IconButton(
            onPressed: (){},
            icon: Icon(Icons.bookmark_border),
          ),
          IconButton(
            onPressed: (){},
            icon: Icon(Icons.share),
          ),
        ],
      ),
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: NetworkImage("https://i.pinimg.com/474x/68/a5/22/68a522df9019f7da1532f18ecb2dc0b0.jpg"),
            fit: BoxFit.cover,
          )
        ),
        child: ListView(
          children: <Widget>[
            Column(
              children: <Widget>[
               Container(
                 margin: EdgeInsets.only(top:10,left: 10),
                 color: Colors.white,
                 child: Padding(
                   padding:  EdgeInsets.only(top:20.0,left: 20,bottom: 10),
                   child: Column(
                     children: <Widget>[
                       Row(
                         children: <Widget>[
                           pyramidIconGoldColor,
                           SizedBox(
                             width: 20,
                           ),
                           Text("PYRAMID", style: pyramidTextGoldStyle),
                         ],
                       ),
                       Container(
                         margin:
                         EdgeInsets.only(top: 10.0, bottom: 10),
                         child: Text(
                             "2011: a room of horror and dread n the sample code above, I load image from an URL",
                             style: headTextStyle),
                       ),
                     ],
                   ),
                 ),
               ),
                //todo:this is image full width fullheight
                Container(
                  child: Image.network(
                    "https://paloimages.prothom-alo.com/contents/cache/images/640x359x1/uploads/media/2019/10/08/55d73a998e8c37068c8fdbd3434f3d24-5d9c0d85125ef.jpg",
                    fit: BoxFit.cover,
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(10),
                  color: Colors.white,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Container(
                        padding: EdgeInsets.only(top:10,bottom: 10),
                        decoration: BoxDecoration(
                          border: Border(
                            bottom: BorderSide(
                                color: Colors.black,
                                width: 2
                            ),
                          ),
                          color: Colors.white,
                        ),
                        child: Text("2011: a room of horror and dread n the sample code above, I load image from an URL"),
                      ),
                      Text("2011: a room of horror and dread n the sample code above, I load image from an URL",style: TextStyle(fontSize: 20,height:1.0,fontWeight: FontWeight.bold,fontFamily: "Grenze-Bold"),),
                      Padding(
                        padding: const EdgeInsets.only(top:8.0,bottom: 8.0),
                        child: Text("8 Oct-2019",style: TextStyle(fontSize: 16),),
                      ),
                      Container(
                        decoration: BoxDecoration(
                          gradient: LinearGradient(
                            colors: [Colors.white, Colors.white70],
                              begin:  FractionalOffset(0.5,0),
                              end:  FractionalOffset(0.5, 0.5),
                              stops: [0.0,1.0],
                              tileMode: TileMode.clamp
                          )
                        ),
                        height: 266,
                        padding: EdgeInsets.only(top:10),
                        child: Text("Police arrested the 10 members of Buet unit BCL yesterday. They were identified as Mehedi Hasan Rasel  of civil engineering batch-13, general secretary of Buet BCL, Muhtasim Fuad of civil engineering batch-14 vice-president, Mehedi Hasan Robein of chemical engineering batch-15, the organising secretary, Anik Sarker of mechanical engineering batch-15, the secretary of information and research affairs, Ishtiaq Ahmed Munna of mechanical engineering batch-15, the publication affairs secretary, Ifti Mosharraf Shakal of biomedical engineering batch-16, the deputy social welfare secretary, Meftahul Islam Zion of naval architecture and marine engineering batch-15, the sports secretary, Muzahidur Rahman Muzahid of civil engineering batch-17, Muntasir Alam Jemi of chemical engineering batch-18 and Khandaker Tabakhkharul Islam Tanvir of mechanical engineering batch-17.Last night, Abrar’s father Barkat Ullah filed a murder case against 19, including the arrestees, with the Chawkbazar Police Station.",style: articalTextStyle),
                      ),
                      Container(
                        margin: EdgeInsets.all(8),
                        decoration: BoxDecoration(
                          border: Border(
                            top: BorderSide(color: primaryColor2,width: 5.0)
                          ),
                        ),
                        child: Card(
                          elevation: 8.0,
                          child: Container(
                            height: 200,
                            margin: EdgeInsets.all(15),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                Text("Register to continue reading, or subscribe of unlimited access",style: TextStyle(color: primaryColor2,fontFamily: 'Grenze-SemiBold',fontSize: 26 ,height: 1.0),),
                                ButtonTheme(
                                  height: 40,
                                  minWidth: size.width,
                                  child: RaisedButton(
                                    onPressed: (){
                                      Navigator.push(context, MaterialPageRoute(builder: (context)=>RegisterScreen()));
                                    },
                                    color: primaryColor2,
                                   child: Text("Register",style: TextStyle(color: Colors.white,fontSize: 14),),
                                  ),
                                ),
                                InkWell(
                                  onTap: (){
                                    showModalBottomSheet(context: context, builder: (context)=>ModalScreen());
                                  },
                                  child: Container(
                                    height: 40,
                                    width: size.width,
                                    decoration: BoxDecoration(
                                      border: Border.all(color: primaryColor2,width: 2),
                                      color: Colors.white
                                    ),
                                    child: Center(child: Text("Start 7-days free trial",style: TextStyle(color: primaryColor2,fontWeight: FontWeight.bold),)),
                                  ),
                                ),
                                InkWell(
                                  onTap: (){
                                    print('Login command');
                                  },
                                  child: Row(
                                    children: <Widget>[
                                      Text("Already have an account? "),
                                      Icon(FontAwesomeIcons.signInAlt,color: primaryColor2,size: 14,),
                                      Text(" Login",style: TextStyle(color: primaryColor2,fontWeight: FontWeight.bold),)
                                    ],
                                  ),
                                ),


                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                )

              ],
            ),
          ],
        ),
      ),
    );
  }
}


