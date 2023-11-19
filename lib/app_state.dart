import 'package:flutter/material.dart';
import '/backend/schema/structs/index.dart';
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
      _Coins = prefs.getInt('ff_Coins') ?? _Coins;
    });
    _safeInit(() {
      _Activities = prefs
              .getStringList('ff_Activities')
              ?.map((x) {
                try {
                  return ActivityStruct.fromSerializableMap(jsonDecode(x));
                } catch (e) {
                  print("Can't decode persisted data type. Error: $e.");
                  return null;
                }
              })
              .withoutNulls
              .toList() ??
          _Activities;
    });
    _safeInit(() {
      _oldActivities = prefs
              .getStringList('ff_oldActivities')
              ?.map((x) {
                try {
                  return ActivityStruct.fromSerializableMap(jsonDecode(x));
                } catch (e) {
                  print("Can't decode persisted data type. Error: $e.");
                  return null;
                }
              })
              .withoutNulls
              .toList() ??
          _oldActivities;
    });
  }

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  late SharedPreferences prefs;

  int _Coins = 0;
  int get Coins => _Coins;
  set Coins(int value) {
    _Coins = value;
    prefs.setInt('ff_Coins', value);
  }

  List<ActivityStruct> _Activities = [];
  List<ActivityStruct> get Activities => _Activities;
  set Activities(List<ActivityStruct> value) {
    _Activities = value;
    prefs.setStringList(
        'ff_Activities', value.map((x) => x.serialize()).toList());
  }

  void addToActivities(ActivityStruct value) {
    _Activities.add(value);
    prefs.setStringList(
        'ff_Activities', _Activities.map((x) => x.serialize()).toList());
  }

  void removeFromActivities(ActivityStruct value) {
    _Activities.remove(value);
    prefs.setStringList(
        'ff_Activities', _Activities.map((x) => x.serialize()).toList());
  }

  void removeAtIndexFromActivities(int index) {
    _Activities.removeAt(index);
    prefs.setStringList(
        'ff_Activities', _Activities.map((x) => x.serialize()).toList());
  }

  void updateActivitiesAtIndex(
    int index,
    ActivityStruct Function(ActivityStruct) updateFn,
  ) {
    _Activities[index] = updateFn(_Activities[index]);
    prefs.setStringList(
        'ff_Activities', _Activities.map((x) => x.serialize()).toList());
  }

  void insertAtIndexInActivities(int index, ActivityStruct value) {
    _Activities.insert(index, value);
    prefs.setStringList(
        'ff_Activities', _Activities.map((x) => x.serialize()).toList());
  }

  List<ActivityStruct> _oldActivities = [];
  List<ActivityStruct> get oldActivities => _oldActivities;
  set oldActivities(List<ActivityStruct> value) {
    _oldActivities = value;
    prefs.setStringList(
        'ff_oldActivities', value.map((x) => x.serialize()).toList());
  }

  void addToOldActivities(ActivityStruct value) {
    _oldActivities.add(value);
    prefs.setStringList(
        'ff_oldActivities', _oldActivities.map((x) => x.serialize()).toList());
  }

  void removeFromOldActivities(ActivityStruct value) {
    _oldActivities.remove(value);
    prefs.setStringList(
        'ff_oldActivities', _oldActivities.map((x) => x.serialize()).toList());
  }

  void removeAtIndexFromOldActivities(int index) {
    _oldActivities.removeAt(index);
    prefs.setStringList(
        'ff_oldActivities', _oldActivities.map((x) => x.serialize()).toList());
  }

  void updateOldActivitiesAtIndex(
    int index,
    ActivityStruct Function(ActivityStruct) updateFn,
  ) {
    _oldActivities[index] = updateFn(_oldActivities[index]);
    prefs.setStringList(
        'ff_oldActivities', _oldActivities.map((x) => x.serialize()).toList());
  }

  void insertAtIndexInOldActivities(int index, ActivityStruct value) {
    _oldActivities.insert(index, value);
    prefs.setStringList(
        'ff_oldActivities', _oldActivities.map((x) => x.serialize()).toList());
  }

  bool _NomeUnvalid = false;
  bool get NomeUnvalid => _NomeUnvalid;
  set NomeUnvalid(bool value) {
    _NomeUnvalid = value;
  }

  bool _semanaUnvalid = false;
  bool get semanaUnvalid => _semanaUnvalid;
  set semanaUnvalid(bool value) {
    _semanaUnvalid = value;
  }

  bool _comecoUnvalid = false;
  bool get comecoUnvalid => _comecoUnvalid;
  set comecoUnvalid(bool value) {
    _comecoUnvalid = value;
  }

  bool _finalUnvalid = false;
  bool get finalUnvalid => _finalUnvalid;
  set finalUnvalid(bool value) {
    _finalUnvalid = value;
  }

  bool _comefiUnvalid = false;
  bool get comefiUnvalid => _comefiUnvalid;
  set comefiUnvalid(bool value) {
    _comefiUnvalid = value;
  }
}

LatLng? _latLngFromString(String? val) {
  if (val == null) {
    return null;
  }
  final split = val.split(',');
  final lat = double.parse(split.first);
  final lng = double.parse(split.last);
  return LatLng(lat, lng);
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
