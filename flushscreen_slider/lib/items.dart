import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';
import 'package:flutter/scheduler.dart';
import 'video.dart';

VideoPlayerController _controller;

final items = <Column>[
  Column(
    mainAxisAlignment: MainAxisAlignment.center,
    crossAxisAlignment: CrossAxisAlignment.center,
    children: <Widget>[
      Center(
          child: Text(
        "1947",
        style: TextStyle(
            fontSize: 40,
            color: Colors.black,
            fontWeight: FontWeight.bold,
            fontFamily: 'Saira'),
      )),
      SizedBox(
        height: 30,
      ),
      Center(
        child: Text(
          "A key resolution at a national education summit in Karachi had been adopted that ‘Urdu’ would be the sole state language of Pakistan and the Government would ensured its exclusive use in the media and in schools. But the Begalis in East Bengal started to protest and later it was transformed into a movement",
          style: TextStyle(
            fontSize: 20,
            color: Colors.blueGrey,
            fontFamily: 'Lacquer',
          ),
        ),
      ),
    ],
  ),
  Column(
    mainAxisAlignment: MainAxisAlignment.center,
    crossAxisAlignment: CrossAxisAlignment.center,
    children: <Widget>[
      Center(
          child: Text(
        "1952 February 21",
        style: TextStyle(
            fontSize: 40,
            color: Colors.black,
            fontWeight: FontWeight.bold,
            fontFamily: 'Saira'),
      )),
      SizedBox(
        height: 30,
      ),
      Center(
        child: Text(
          " Language Movement – International Mother Language Day. Pakistan government forcibly tried to stop the demand of the Bengali people to establish “Bangla” as one of the state’s language of Pakistan. As a result, some protesters had been killed, huge number of people took the streets to protests unanimously and thus “seeds of Bangladeshi nationalism” was sown during that movement.",
          style: TextStyle(
            fontSize: 20,
            color: Colors.blueGrey,
            fontFamily: 'Lacquer',
          ),
        ),
      ),
    ],
  ),
  Column(
    mainAxisAlignment: MainAxisAlignment.center,
    crossAxisAlignment: CrossAxisAlignment.center,
    children: <Widget>[
      Center(
          child: Text(
        "1969 December 5",
        style: TextStyle(
            fontSize: 40,
            color: Colors.black,
            fontWeight: FontWeight.bold,
            fontFamily: 'Saira'),
      )),
      SizedBox(
        height: 30,
      ),
      Center(
        child: Text(
          " At a discussion meeting, Sheikh Mujib declared that from now on the East Pakistan would be called Bangla Desh. He added:",
          style: TextStyle(
            fontSize: 20,
            color: Colors.blueGrey,
            fontFamily: 'Lacquer',
          ),
        ),
      ),
    ],
  ),
  Column(
    mainAxisAlignment: MainAxisAlignment.center,
    crossAxisAlignment: CrossAxisAlignment.center,
    children: <Widget>[
      Center(
          child: Text(
        "1970 December 7",
        style: TextStyle(
            fontSize: 40,
            color: Colors.black,
            fontWeight: FontWeight.bold,
            fontFamily: 'Saira'),
      )),
      SizedBox(
        height: 30,
      ),
      Center(
        child: Text(
          "In 1970 the Awami League, the largest East Pakistani political party, led by Sheikh Mujibur Rahman, won a landslide victory in the national elections. The party won 167 out of the 169 seats allotted to East Pakistan, and thus a majority of the 313 seats in the National Assembly. This gave the Awami League the constitutional right to form a government.",
          style: TextStyle(
            fontSize: 20,
            color: Colors.blueGrey,
            fontFamily: 'Lacquer',
          ),
        ),
      ),
    ],
  ),
  Column(
    mainAxisAlignment: MainAxisAlignment.center,
    crossAxisAlignment: CrossAxisAlignment.center,
    children: <Widget>[
      Center(
          child: Text(
        "1971 March 15-24",
        style: TextStyle(
            fontSize: 40,
            color: Colors.black,
            fontWeight: FontWeight.bold,
            fontFamily: 'Saira'),
      )),
      SizedBox(
        height: 30,
      ),
      Center(
        child: Text(
          "During this time, the GOP was showing the world that they tried to solve the problem by discussing with Sheikh Mujib in East Pakistan. But they pretended to do so, they actually piled their strength by intruding the troops into Dhaka from the West Pakistan to crush the Bengali and their “Nationalism”. At this stage, Zulfiqar Ali Bhutto was participating in the Drama of GOP.",
          style: TextStyle(
            fontSize: 20,
            color: Colors.blueGrey,
            fontFamily: 'Lacquer',
          ),
        ),
      ),
    ],
  ),
  Column(
    mainAxisAlignment: MainAxisAlignment.center,
    crossAxisAlignment: CrossAxisAlignment.center,
    children: <Widget>[
      Center(
          child: Text(
        "1971 March 25",
        style: TextStyle(
            fontSize: 40,
            color: Colors.black,
            fontWeight: FontWeight.bold,
            fontFamily: 'Saira'),
      )),
      SizedBox(
        height: 30,
      ),
      Center(
        child: Text(
          " Pak army crackdown on the civilians in Dhaka to stop the Bengalis forever. They named their “Dirty War” against the legal demand of Bengalis as “Operation Searchlight”. Thus their systematic slaughtering and ethnic cleansing had been started at that night and continued up to their surrender on 16th December, 1971 and the whole world could observe that brutality of Pakistan’s hyena-army.",
          style: TextStyle(
            fontSize: 20,
            color: Colors.blueGrey,
            fontFamily: 'Lacquer',
          ),
        ),
      ),
    ],
  ),
  Column(
    mainAxisAlignment: MainAxisAlignment.center,
    children: <Widget>[
      Text(
        "Login",
        style: TextStyle(
            fontSize: 40,
            color: Colors.black,
            fontWeight: FontWeight.bold,
            fontFamily: 'Saira'),
      ),
      SizedBox(
        height: 30,
      ),
      TextField(
        textAlign: TextAlign.center,

        style: TextStyle(
            fontSize: 18,
            color: Colors.black,
            fontWeight: FontWeight.bold,
            fontFamily: 'Saira'),
        decoration: InputDecoration(
            border: InputBorder.none,
            hintText: 'Enter The Email',
            enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(20.0),
                borderSide: BorderSide(color: Colors.blue))),
      ),
      SizedBox(
        height: 15,
      ),
      TextField(
        textAlign: TextAlign.center,
        obscureText: true,
        style: TextStyle(
            fontSize: 18,
            color: Colors.black,
            fontWeight: FontWeight.bold,
            fontFamily: 'Saira'),
        decoration: InputDecoration(
            border: InputBorder.none,
            hintText: 'Enter The Password',
            enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(20.0),
                borderSide: BorderSide(color: Colors.blue))),
      ),
    ],
  )
];
