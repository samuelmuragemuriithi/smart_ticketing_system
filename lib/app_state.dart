import 'package:flutter/material.dart';
import '/backend/backend.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'flutter_flow/flutter_flow_util.dart';

class FFAppState extends ChangeNotifier {
  static FFAppState _instance = FFAppState._internal();

  factory FFAppState() {
    return _instance;
  }

  FFAppState._internal();

  static void reset() {
    _instance = FFAppState._internal();
  }

  Future initializePersistedState() async {
    prefs = await SharedPreferences.getInstance();
    _safeInit(() {
      _list = prefs.getStringList('ff_list') ?? _list;
    });
    _safeInit(() {
      _dates = prefs.getStringList('ff_dates') ?? _dates;
    });
  }

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  late SharedPreferences prefs;

  List<String> _list = ['Hello World', 'Hello World', 'Hello World'];
  List<String> get list => _list;
  set list(List<String> value) {
    _list = value;
    prefs.setStringList('ff_list', value);
  }

  void addToList(String value) {
    list.add(value);
    prefs.setStringList('ff_list', _list);
  }

  void removeFromList(String value) {
    list.remove(value);
    prefs.setStringList('ff_list', _list);
  }

  void removeAtIndexFromList(int index) {
    list.removeAt(index);
    prefs.setStringList('ff_list', _list);
  }

  void updateListAtIndex(
    int index,
    String Function(String) updateFn,
  ) {
    list[index] = updateFn(_list[index]);
    prefs.setStringList('ff_list', _list);
  }

  void insertAtIndexInList(int index, String value) {
    list.insert(index, value);
    prefs.setStringList('ff_list', _list);
  }

  List<String> _dates = ['Hello World', 'Hello World', 'Hello World'];
  List<String> get dates => _dates;
  set dates(List<String> value) {
    _dates = value;
    prefs.setStringList('ff_dates', value);
  }

  void addToDates(String value) {
    dates.add(value);
    prefs.setStringList('ff_dates', _dates);
  }

  void removeFromDates(String value) {
    dates.remove(value);
    prefs.setStringList('ff_dates', _dates);
  }

  void removeAtIndexFromDates(int index) {
    dates.removeAt(index);
    prefs.setStringList('ff_dates', _dates);
  }

  void updateDatesAtIndex(
    int index,
    String Function(String) updateFn,
  ) {
    dates[index] = updateFn(_dates[index]);
    prefs.setStringList('ff_dates', _dates);
  }

  void insertAtIndexInDates(int index, String value) {
    dates.insert(index, value);
    prefs.setStringList('ff_dates', _dates);
  }
}

void _safeInit(Function() initializeField) {
  try {
    initializeField();
  } catch (_) {}
}

Future _safeInitAsync(Function() initializeField) async {
  try {
    await initializeField();
  } catch (_) {}
}
