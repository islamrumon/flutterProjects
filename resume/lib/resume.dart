import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'helper.dart';
import 'package:path_provider/path_provider.dart';
import 'package:flutter_pdfview/flutter_pdfview.dart';
import 'dart:io';
import 'PdfViewPageState.dart';



Helper _helper = new Helper();

class Resume extends StatefulWidget {
  @override
  _ResumeState createState() => _ResumeState();
}

class _ResumeState extends State<Resume> {
  String assetPDFPath = "";
  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    getFileFromAsset("images/rumon.pdf").then((f) {
      setState(() {
        assetPDFPath = f.path;
        print(assetPDFPath);
      });
    });
  }

  Future<File> getFileFromAsset(String asset) async {
    try {
      var data = await rootBundle.load(asset);
      var bytes = data.buffer.asUint8List();
      var dir = await getApplicationDocumentsDirectory();
      File file = File("${dir.path}/rumon.pdf");

      File assetFile = await file.writeAsBytes(bytes);
      return assetFile;
    } catch (e) {
      throw Exception("Error opening asset file");
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
      ),
      body: Container(
        color: Colors.white,
        child: ListView(
          scrollDirection: Axis.vertical,
          children: <Widget>[
            //todo:career objectives
            Resuabal(
              color: Colors.white,
              body: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(25)),
                        color: Colors.red,
                      ),
                      child: Padding(
                          padding: EdgeInsets.all(8.0),
                          child: _helper.chipes(
                              'Career Objectives', Colors.white))),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: _helper.chipes(
                        '${_helper.careerObjectives}', Colors.black),
                  ),
                ],
              ),
            ),
            //todo: project Skills
            Resuabal(
              color: Colors.white,
              body: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(25)),
                        color: Colors.red,
                      ),
                      child: Padding(
                          padding: EdgeInsets.all(8.0),
                          child: _helper.chipes(
                              'My Project Skills', Colors.white))),
                  ReListTile(
                    title: '1, E-commerce application',
                    subtitle: 'Asp.net MVC , SqlServer 2014, Jquery, Ajax',
                  ),
                  ReListTile(
                    title: '2, Point of sales Desktop Base',
                    subtitle: 'C#, Windows Form,SqlServer-2014',
                  ),
                  ReListTile(
                    title: '3, Court Case App',
                    subtitle: 'Asp.net MVC , SqlServer 2014, Jquery, Ajax',
                  ),
                ],
              ),
            ),

            //todo:Use table widget for show in skills
            Resuabal(
              color: Colors.white,
              body: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(25)),
                        color: Colors.red,
                      ),
                      child: Padding(
                          padding: EdgeInsets.all(8.0),
                          child: _helper.chipes(
                              'Professional Skill', Colors.white))),
                  SizedBox(
                    height: 16,
                  ),
                  Table(
                    border: TableBorder.all(width: 1, color: Colors.pinkAccent),
                    children: [
                      _tableRow(
                          'Programming Language : PHP, Python, Javascript, Dart'),
                      _tableRow('Technologies : Laravel, Django, Asp.Net '),
                      _tableRow(
                          'Mobile Technologies : Flutter(Single Codebase Android or IOS)'),
                      _tableRow('Library : Jquery and Ajax'),
                      _tableRow(
                          'Database Software : SQL Server,, SQlite, MySql, MongoDB '),
                      _tableRow(
                          'Front-End Framework : Bootstrap, Foundation, Angular 5+ '),
                      _tableRow('Markup Language : HTML5, CSS3, JSON'),
                      _tableRow('OS : Windows, Mac, Linux'),
                      _tableRow('Software Version : Git, VSTS'),
                    ],
                  ),
                ],
              ),
            ),

            //todo:Academic Qualification
            Resuabal(
              color: Colors.white,
              body: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(25)),
                          color: Colors.red,
                        ),
                        child: Padding(
                            padding: EdgeInsets.all(8.0),
                            child: _helper.chipes(
                                'Academic Qualification', Colors.white))),
                    ReListTile(
                      title: 'BSC in CSE',
                      subtitle: 'Northern University, Dhaka',
                    ),
                    ReListTile(
                      title: 'Diploma in CSE',
                      subtitle: 'Feni Computer Institute, Feni',
                    ),
                    ReListTile(
                      title: 'SSC in Science',
                      subtitle:
                          'Nawab Habibullha Model School and Collage, Dhaka',
                    ),
                  ]),
            ),

            Padding(
              padding: const EdgeInsets.all(14.0),
              child: RaisedButton(
                onPressed: () {
                  if (assetPDFPath != null) {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) =>
                                PdfViewPage(path: assetPDFPath)));
                  }
                },
                padding: EdgeInsets.all(18.0),
                colorBrightness: Brightness.light,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(30)),
                  side: BorderSide(color: Colors.black54, width: 2.0),
                ),
                child: Text(
                  'Click Here',
                  textAlign: TextAlign.center,
                  style: TextStyle(color: Colors.black, letterSpacing: 2.0),
                ),
                color: Colors.red,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

TableRow _tableRow(String data) {
  return TableRow(
    children: data.split(':').map((name) {
      return Container(
        child: Text(name, style: TextStyle(fontSize: 14.0)),
        padding: EdgeInsets.all(8.0),
      );
    }).toList(),
  );
}

class ReListTile extends StatelessWidget {
  ReListTile({@required this.title, this.subtitle});
  String title;
  String subtitle;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        ListTile(
          title: Text(
            title,
            style: TextStyle(
              fontWeight: FontWeight.bold,
            ),
          ),
          subtitle: Text(subtitle),
        ),
        Divider(
          color: Colors.blueAccent,
          height: 2,
          endIndent: 8,
          indent: 8,
        )
      ],
    );
  }
}

class Resuabal extends StatelessWidget {
  Resuabal({@required this.color, this.body});
  final Color color;
  final Widget body;
  @override
  Widget build(BuildContext context) {
    return Card(
      color: color,
      margin: EdgeInsets.only(bottom: 8, right: 8, top: 0, left: 8),
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(40), topRight: Radius.circular(50))),
      child: Padding(padding: const EdgeInsets.all(14.0), child: body),
    );
  }
}


