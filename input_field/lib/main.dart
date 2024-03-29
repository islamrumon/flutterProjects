import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:intl/intl.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Form builder'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  var data;
  bool autoValidate = true;
  bool readOnly = false;
  bool showSegmentedControl = true;
  final GlobalKey<FormBuilderState> _fbKey = GlobalKey<FormBuilderState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Padding(padding: EdgeInsets.all(10),
      child: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            FormBuilder(
              key: _fbKey,
              initialValue: {
                'date':DateTime.now(),
                'accept_terms' : false,
              },
              autovalidate: true,
              child: Column(
                children: <Widget>[
                  FormBuilderTextField(
                    attribute: 'text',
                    validators: [FormBuilderValidators.required()],
                    decoration: InputDecoration(labelText: 'Full name'),
                  ),
                  FormBuilderDateTimePicker(
                    attribute: "date",
                    inputType: InputType.date,
                    validators: [FormBuilderValidators.required()],
                    format: DateFormat("dd-MM-yyyy"),
                    decoration: InputDecoration(labelText: "Date of Birth"),
                  ),
                  FormBuilderDropdown(
                    attribute: "gender",
                    decoration: InputDecoration(
                      labelText: "Gender"
                    ),
                    hint: Text('Select Gender'),
                    validators: [FormBuilderValidators.required()],
                    items: ['Male','Female','Other'].map((gender) => DropdownMenuItem(
                      value: gender, child: Text("$gender"),
                    )).toList()
                  ),

                  FormBuilderTextField(
                    attribute: "age",
                    decoration: InputDecoration(labelText: "Age"),
                    keyboardType: TextInputType.number,
                    validators: [
                      FormBuilderValidators.numeric(),
                      FormBuilderValidators.max(70),
                    ],
                  ),

                  FormBuilderSlider(
                    attribute: "slider",
                    validators: [FormBuilderValidators.min(6)],
                    min:0.0,
                    max: 10.0,
                    initialValue: 1.0,
                    divisions: 20,
                    decoration: InputDecoration(
                      labelText: "Number of Family Members"
                    ),
                  ),

                  FormBuilderSegmentedControl(
                    decoration: InputDecoration(labelText: "Rating"),
                    attribute: "movie_rating",
                    options: List.generate(5,(i) => i+1).map(
                            (number) => FormBuilderFieldOption(value: number,)).toList(),
                  ),

                  FormBuilderStepper(
                    decoration: InputDecoration(labelText: "Stepper"),
                    attribute: 'stepper',
                    initialValue: 10,
                    step: 1,
                  ),

                  FormBuilderCheckboxList(
                    decoration: InputDecoration(labelText: "Languages you kenow"),
                    attribute: "languages",
                    initialValue: ["English"],
                    options: [
                      FormBuilderFieldOption(value: "English"),
                      FormBuilderFieldOption(value: "Hindi"),
                      FormBuilderFieldOption(value: "Bangla"),
                    ],
                  ),
                  FormBuilderSignaturePad(
                    decoration: InputDecoration(labelText: "Signature"),
                    attribute: "signature",
                    height: 100,
                  ),
                  FormBuilderRate(
                    decoration: InputDecoration(labelText: "Rate this site"),
                    attribute: "rate",
                    iconSize: 32.0,
                    initialValue: 1,
                    max:5,
                  ),
                  FormBuilderCheckbox(
                    attribute: "accept_terms",
                    label: Text("I have read and agree to the terms and conditions"),
                    validators: [
                      FormBuilderValidators.requiredTrue(
                        errorText: "You must accept terms and conditions to continue",
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Row(
              children: <Widget>[
                MaterialButton(
                  child: Text("Submit"),
                  onPressed: (){
                    setState(() {
                      _fbKey.currentState.save();
                      if(_fbKey.currentState.validate()){
                        print(_fbKey.currentState.value);
                      }
                      data = _fbKey.currentState.value;
                      print(data);
                    });

                  },
                ),
                MaterialButton(
                  child: Text("Reset"),
                  onPressed: (){
                    _fbKey.currentState.reset();
                  },
                ),
              ],
            ),
          ],
        ),
      ),
      )// This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
