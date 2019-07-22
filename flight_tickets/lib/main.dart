import 'package:flutter/material.dart';
import 'CustomScreenClipper.dart';
import "package:intl/intl.dart";
import 'CustomAppBar.dart';
import 'FlightListScreen.dart';
void main()=> runApp(MaterialApp(
  title: "Flight Teckit",
  debugShowCheckedModeBanner: false,
  home: HomePage(),
));

//colors
Color firstColor = Colors.cyan;
Color secoundColor = Colors.blueAccent;

List<String> locations = ['Dhaka','Bangladesh'];

var setLocation = 0;
var isFlightSelect =true;
const textStyle = TextStyle(color: Colors.black,fontSize: 16.0);
final curensy = NumberFormat.simpleCurrency();

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: CustomAppBar(),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,

        child: Column(
          children: <Widget>[

            HomeTopScreen(),
            homeBottomScreen,
            homeBottomScreen,
            homeBottomScreen
          ],
        ),
      ),
    );
  }
}


class HomeTopScreen extends StatefulWidget {

  @override
  _HomeTopScreenState createState() => _HomeTopScreenState();
}

class _HomeTopScreenState extends State<HomeTopScreen> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Container(
          child: ClipPath(
            clipper: CustomScreenClipper(),
            child: Container(
              height: 400.0,

              decoration: BoxDecoration(gradient: LinearGradient(colors: [
                  firstColor,
                  secoundColor,

              ])),
            child: Column(
              children: <Widget>[
                SizedBox(height: 50.0),
                Padding(
                  padding: EdgeInsets.all(14.0),
                  child: Row(
                    children: <Widget>[
                      Icon(Icons.location_on, color: Colors.white),
                      SizedBox(width: 16.0),
                      PopupMenuButton(
                        onSelected: (index){
                          setState(() {
                            setLocation = index;
                          });
                        },
                        child: Row(
                          children: <Widget>[
                           Text(locations[setLocation],style: TextStyle(color: Colors.white,fontSize: 16.0)),
                            Icon(Icons.keyboard_arrow_down, color: Colors.white,)
                          ],
                        ),
                        itemBuilder: (BuildContext context) => <PopupMenuItem<int>> [
                          PopupMenuItem(
                            child: Text(locations[0], style: textStyle,),
                            value: 0,
                          ),
                          PopupMenuItem(
                            child: Text(locations[1], style: textStyle),
                            value: 1,
                          )

                        ],
                      ),
                      Spacer(),
                      Icon(Icons.settings,color: Colors.white,)
                    ],
                  ),
                ),
                SizedBox(height: 40),
                Text("Where would\nyou want to go?",style: TextStyle(color: Colors.white,fontSize: 24.0),textAlign: TextAlign.center,),
              SizedBox(height: 20),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 32.0),
                child: Material(
                  elevation: 5.0,
                  borderRadius: BorderRadius.all(Radius.circular(30.0)),
                  child: TextField(
                    controller: TextEditingController(text: locations[1]),
                    style: textStyle,
                    cursorColor: Colors.lightBlueAccent,
                    decoration: InputDecoration(
                      contentPadding: EdgeInsets.symmetric(horizontal: 16.0,vertical: 13.0),
                      suffixIcon: Material(
                        elevation: 2.0,
                        borderRadius: BorderRadius.all(Radius.circular(30.0)),

                        child: InkWell(
                          onTap:(){ Navigator.push(context, MaterialPageRoute(builder:
                          (context) =>FlightListScreen()));},
                          child: Icon(
                            Icons.search,
                            color: Colors.black,),
                        ),
                      ),
                      border: InputBorder.none,
                    ),
                  ),
                ),
              ),
                SizedBox(height:20.0),
                Row(
                 mainAxisAlignment: MainAxisAlignment.spaceAround,
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                   InkWell(child: ChoiceChip(icon: Icons.flight,text: "Flight", isSelected: isFlightSelect, ),onTap:(){
                     setState(() {
                       isFlightSelect = true;
                     });
                   },),
                    SizedBox(width: 20.0,),
                    InkWell(child: ChoiceChip(icon: Icons.hotel,text: "Hotel", isSelected: !isFlightSelect,), onTap: (){
                      setState(() {
                        isFlightSelect =false;
                      });
                    },),

                  ],
                )
              ],
              
            ),
            ),
          ),
        )
      ],
    );
  }
}

//when i pass data from object
class ChoiceChip extends StatefulWidget {

  final IconData icon;
  final String  text;
  final bool isSelected;

  ChoiceChip({this.icon,this.text,this.isSelected});

  @override
  _ChoiceChipState createState() => _ChoiceChipState();
}

class _ChoiceChipState extends State<ChoiceChip> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 16.0,vertical: 8.0),
      decoration: widget.isSelected ? BoxDecoration(color: Colors.white70.withOpacity(0.11),
      borderRadius: BorderRadius.all(Radius.circular(20.0))): null,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          Icon(
            widget.icon,
            size: 20,
            color: Colors.white,
          ),
          SizedBox(width: 2.0),
          Text(
            widget.text,
            style: TextStyle(color: Colors.white,fontSize: 20),
          ),
        ],
      ),
    );
  }
}

var count =12;
var homeBottomScreen = Column(
 children: <Widget>[
   Padding(
     padding: EdgeInsets.symmetric(horizontal: 16.0,vertical: 16.0),
     child: Row(
       mainAxisSize: MainAxisSize.max,
       mainAxisAlignment: MainAxisAlignment.spaceBetween,
       children: <Widget>[
         Text("Carrent Watch Item",style: TextStyle(color: Colors.black,fontSize: 20),),
         Spacer(),
         Text("ViewAll($count)",style: TextStyle(color: Colors.blue, fontSize: 18),)

       ],
     ),
   ),
   Container(
     height: 200.0,
     child: ListView(
       scrollDirection: Axis.horizontal,
       children: cityCards,
     ),
   ),
 ],
);

List<CityCards> cityCards = [
CityCards("assets/images/1.jpg","Barisal","Decembar","20%",4000,3800),
  CityCards("assets/images/2.jpg","Dhaka","Decembar","20%",4000,3800),
  CityCards("assets/images/3.jpg","CTG","Decembar","20%",4000,3800),
  CityCards("assets/images/4.jpg","Syleat","Decembar","20%",4000,3800),
  CityCards("assets/images/5.jpg","Kulna","Decembar","20%",4000,3800),
  CityCards("assets/images/6.jpg","Rajsahi","Decembar","20%",4000,3800),
  CityCards("assets/images/7.jpg","Rongpur","Decembar","20%",4000,3800),
  CityCards("assets/images/8.jpg","Barisal","Decembar","20%",4000,3800),
  CityCards("assets/images/9.jpg","Dhaka","Decembar","20%",4000,3800),
  CityCards("assets/images/10.jpg","CTG","Decembar","20%",4000,3800),
  CityCards("assets/images/11.jpg","Syleat","Decembar","20%",4000,3800),
  CityCards("assets/images/12.jpg","Kulna","Decembar","20%",4000,3800),
  CityCards("assets/images/13.jpg","Rajsahi","Decembar","20%",4000,3800),
  CityCards("assets/images/14.jpg","Rongpur","Decembar","20%",4000,3800),
  CityCards("assets/images/15.jpg","Barisal","Decembar","20%",4000,3800),
  CityCards("assets/images/1.jpg","Dhaka","Decembar","20%",4000,3800),
  CityCards("assets/images/17.jpg","CTG","Decembar","20%",4000,3800),
  CityCards("assets/images/18.jpg","Syleat","Decembar","20%",4000,3800),
  CityCards("assets/images/5.jpg","Kulna","Decembar","20%",4000,3800),
  CityCards("assets/images/6.jpg","Rajsahi","Decembar","20%",4000,3800),
  CityCards("assets/images/7.jpg","Rongpur","Decembar","20%",4000,3800),
];

class CityCards extends StatelessWidget {

  final String imgPath,  cityName,  month, discount ;
  final int oldPrice, newPrice;
  CityCards(
   this.imgPath,
   this.cityName,
      this.month,
      this.discount,
      this.newPrice,
      this.oldPrice
);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 17),

      child: Column(
        children: <Widget>[
          ClipRRect(
            borderRadius: BorderRadius.all(Radius.circular(18)),
            child: Stack(
              children: <Widget>[
                Container(
                  height: 200.0,
                  width: 160.0,
                  child: Image.asset(imgPath,fit: BoxFit.cover,),
                ),
                Positioned(
                  left: 0.0,
                  bottom: 0.0,
                  width: 160.0,
                  height: 100,
                  child: Container(
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                          begin: Alignment.bottomCenter,
                          end: Alignment.topCenter,
                          colors: [Colors.black,Colors.black54.withOpacity(0.1)]),
                    ),
                  ),
                ),
                Positioned(
                  left: 13.0,
                  bottom: 40.0,
                  right: 10.0,
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(cityName,style: TextStyle(color: Colors.white ,fontSize: 22, fontWeight: FontWeight.bold),),
                          Text(month,style: TextStyle(color: Colors.white,fontSize: 18,)),
                        ],
                      ),
                      Container(
                          padding: EdgeInsets.symmetric(horizontal: 6.0, vertical: 2.0),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            shape: BoxShape.rectangle,
                            borderRadius: BorderRadius.all(Radius.circular(10.0)),
                          ),
                          child: Text(discount,style: TextStyle(color: Colors.black,fontSize: 18,fontWeight:FontWeight.bold),)
                      ),

                    ],

                  ),

                ),
                Positioned(
                  left: 17,
                  bottom: 10,
                  child: Row(

                    children: <Widget>[
                      Text(curensy.format(newPrice),style: TextStyle(color: Colors.white ,fontSize: 20, fontWeight: FontWeight.normal),),

                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),

    );
  }
}
