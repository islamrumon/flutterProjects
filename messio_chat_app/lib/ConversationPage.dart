import 'package:flutter/material.dart';
import 'package:messio_chat_app/widgets/ChartAppBar.dart';
import 'package:messio_chat_app/widgets/ChatListWidget.dart';
import 'package:messio_chat_app/widgets/InputWidget.dart';

class ConversationPage extends StatefulWidget {
  @override
  _ConversationPageState createState() => _ConversationPageState();
}

class _ConversationPageState extends State<ConversationPage> {

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
            appBar: ChatAppBar(), // Custom app bar for chat screen
            body: SafeArea(
              child: Stack(children: <Widget>[
                Column(
                  children: <Widget>[
                    ChatListWidget(),//Chat list
                    InputWidget() // The input widget
                  ],
                ),
              ]
              ),
            )

    );
  }


}