
import 'package:flutter/cupertino.dart';

import '../model/place.dart';
class GradePlace with ChangeNotifier {

  List<Place> _items = [];
  List<Place> get items {
    return [..._items];
  }

}